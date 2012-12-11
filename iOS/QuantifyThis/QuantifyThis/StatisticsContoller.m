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
    if(self.model==nil)
        self.model = [[MoodEntryModel alloc] init];
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
        
        //put parsed data into moodentries and add to entries to moodentrymodel.
        NSArray *entryList = [entries objectForKey:@"entries"];
        for(NSDictionary *entry in entryList){
            NSLog(@"Entry: %d", [entryList indexOfObject:entry]);
            //heartRate
            NSNumber *heart = [entry objectForKey:@"heart"];
            if(heart != (id)[NSNull null])
                NSLog(@"%d", [heart integerValue]);
            //moods
            NSDictionary *mood = [entry objectForKey:@"mood"];
            NSArray *values = [mood objectForKey:@"moodvalue"];
            NSDate *prevDate;
            if(values != (id)[NSNull null] && [values count] == 5){

                NSLog(@"%d", [(NSNumber *)[values objectAtIndex:0] integerValue]);
                NSLog(@"%d", [(NSNumber *)[values objectAtIndex:1] integerValue]);
                NSLog(@"%d", [(NSNumber *)[values objectAtIndex:2] integerValue]);
                NSLog(@"%d", [(NSNumber *)[values objectAtIndex:3] integerValue]);
                NSLog(@"%d", [(NSNumber *)[values objectAtIndex:4] integerValue]);
                
                //entry date
                NSNumber *date = [entry objectForKey:@"date"];
                NSTimeInterval interval = [date longLongValue]/1000;
                NSDate *entryDate = [[NSDate alloc]initWithTimeIntervalSince1970:interval];
                NSLog(@"%@", entryDate);
                MoodEntry *finalEntry = [[MoodEntry alloc] initWithValue1:(NSNumber *)[values objectAtIndex:0] Value2:(NSNumber *)[values objectAtIndex:1] Value3:(NSNumber *)[values objectAtIndex:2] Value4:(NSNumber *)[values objectAtIndex:3] Value5:(NSNumber *)[values objectAtIndex:4] createdOn:entryDate];
                [self.model addEntry:finalEntry];
                
            }
        }
        [self refreshPlot];
        
        
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


//see if 2 dates are on the same day.
- (BOOL)isSameDayWithDate1:(NSDate*)date1 date2:(NSDate*)date2 {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    NSDateComponents* comp1 = [calendar components:unitFlags fromDate:date1];
    NSDateComponents* comp2 = [calendar components:unitFlags fromDate:date2];
    
    return [comp1 day]   == [comp2 day] &&
    [comp1 month] == [comp2 month] &&
    [comp1 year]  == [comp2 year];
}
- (void) refreshPlot
{
    NSMutableArray *newData = [NSMutableArray array];
    NSMutableArray *handledDates = [[NSMutableArray alloc]init];
    for(MoodEntry *entry in [self.model sortedEntries]){
        BOOL allreadyHandled = NO;
        for(NSDate *date in handledDates){
            if([self isSameDayWithDate1:date date2:[entry entryDate]])
                allreadyHandled = YES;
        }
        if(!allreadyHandled){
            NSNumber *average = [NSNumber numberWithInteger:[self.model averageFromMoodIndex:0 OnDate:[entry entryDate]]];
            NSNumber *time = [NSNumber numberWithDouble:[[entry entryDate] timeIntervalSince1970]];
            NSDictionary *plotPoint = [NSDictionary dictionaryWithObjectsAndKeys:time, [NSNumber numberWithInt:CPTScatterPlotFieldX],average, [NSNumber numberWithInt:CPTScatterPlotFieldY],nil];
            
            [newData addObject: plotPoint];
            [handledDates addObject:[entry entryDate]];
        }
        
    }
    
    self.scatterPlot = [[TutScatterPlot alloc] initWithHostingView:graphHostingView andData:newData];
    [self.scatterPlot initialisePlot];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadEntryDataIntoModel];
    
    /*NSTimeInterval oneDay = 24 * 60 * 60;
    
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
    [self.scatterPlot initialisePlot];*/
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
