//
//  StatisticsContoller.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "StatisticsContoller.h"
#import "SBJson.h"
@interface StatisticsContoller (){

}

@end

@implementation StatisticsContoller

@synthesize model = _model;

NSMutableString *incompleteDataResponse;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    incompleteDataResponse = [[NSMutableString alloc] init];
    [super viewDidLoad];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d{
    NSLog(@"data recieved");
    
    NSString *json_string = [[NSString alloc] initWithData:d encoding:NSUTF8StringEncoding];
    [incompleteDataResponse appendString:json_string];
    // Create SBJSON object to parse JSON
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    // parse the JSON string into an object
    NSDictionary *entries = [parser objectWithString:incompleteDataResponse error:nil];
    
    if(entries){
        NSLog(@"Parsing succesfull");
        incompleteDataResponse = [[NSMutableString alloc] init];
    }
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"response recieved");
    
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"failed with error.");
    NSLog(@"%@",[error localizedDescription]);
    
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"connection finished loading");
}
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge{
    NSLog(@"authentication needed!");
}

- (void) loadEntryDataIntoModel
{
    NSString *url = @"http://quantifythisapp.appspot.com/DataService?request=getMood&format=json";
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:(NSString *)@"GET"];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:(NSURLRequest *)request delegate: self];
    [connection start];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadEntryDataIntoModel];
    NSTimeInterval oneDay = 24 * 60 * 60;
    
    NSMutableArray *newData = [NSMutableArray array];
    NSUInteger i;
    
    for ( i = 0; i < 7; i++ ) {
        NSTimeInterval x = oneDay*i;
        id y = [NSDecimalNumber numberWithFloat:arc4random() % 100];
        [newData addObject:
         [NSDictionary dictionaryWithObjectsAndKeys:
          [NSDecimalNumber numberWithFloat:x], [NSNumber numberWithInt:CPTScatterPlotFieldX],
          y, [NSNumber numberWithInt:CPTScatterPlotFieldY],
          nil]];
    }
    
    self.scatterPlot = [[TutScatterPlot alloc] initWithHostingView:graphHostingView andData:newData];
    [self.scatterPlot initialisePlot];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
