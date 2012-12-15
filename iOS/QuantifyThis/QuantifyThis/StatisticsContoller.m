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
    NSMutableArray *newData2 = [NSMutableArray array];
    NSMutableArray *newData3 = [NSMutableArray array];
    NSMutableArray *newData4 = [NSMutableArray array];
    NSMutableArray *newData5 = [NSMutableArray array];
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
            
            NSNumber *average2 = [NSNumber numberWithInteger:[self.model averageFromMoodIndex:1 OnDate:[entry entryDate]]];
            NSNumber *time2 = [NSNumber numberWithDouble:[[entry entryDate] timeIntervalSince1970]];
            NSDictionary *plotPoint2 = [NSDictionary dictionaryWithObjectsAndKeys:time2, [NSNumber numberWithInt:CPTScatterPlotFieldX],average2, [NSNumber numberWithInt:CPTScatterPlotFieldY],nil];
            [newData2 addObject: plotPoint2];
            
            NSNumber *average3 = [NSNumber numberWithInteger:[self.model averageFromMoodIndex:2 OnDate:[entry entryDate]]];
            NSNumber *time3 = [NSNumber numberWithDouble:[[entry entryDate] timeIntervalSince1970]];
            NSDictionary *plotPoint3 = [NSDictionary dictionaryWithObjectsAndKeys:time3, [NSNumber numberWithInt:CPTScatterPlotFieldX],average3, [NSNumber numberWithInt:CPTScatterPlotFieldY],nil];
            [newData3 addObject: plotPoint3];
            
            NSNumber *average4 = [NSNumber numberWithInteger:[self.model averageFromMoodIndex:3 OnDate:[entry entryDate]]];
            NSNumber *time4 = [NSNumber numberWithDouble:[[entry entryDate] timeIntervalSince1970]];
            NSDictionary *plotPoint4 = [NSDictionary dictionaryWithObjectsAndKeys:time4, [NSNumber numberWithInt:CPTScatterPlotFieldX],average4, [NSNumber numberWithInt:CPTScatterPlotFieldY],nil];
            [newData4 addObject: plotPoint4];
            
            NSNumber *average5 = [NSNumber numberWithInteger:[self.model averageFromMoodIndex:4 OnDate:[entry entryDate]]];
            NSNumber *time5 = [NSNumber numberWithDouble:[[entry entryDate] timeIntervalSince1970]];
            NSDictionary *plotPoint5 = [NSDictionary dictionaryWithObjectsAndKeys:time5, [NSNumber numberWithInt:CPTScatterPlotFieldX],average5, [NSNumber numberWithInt:CPTScatterPlotFieldY],nil];
            [newData5 addObject: plotPoint5];
            
            [handledDates addObject:[entry entryDate]];
        }
        
    }
    
    self.scatterPlot = [[TutScatterPlot alloc] initWithHostingView:graphHostingView andData:newData andData2:newData2 andData3:newData3 andData4:newData4 andData5:newData5];
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
