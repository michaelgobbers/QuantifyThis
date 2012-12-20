//
//  CalendarViewController.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "CalendarViewController.h"
#import "SBJson.h"
#import "Event.h"

@interface CalendarViewController ()

@end

@implementation CalendarViewController

@synthesize model = _model;
@synthesize myTableView = _myTableView;

NSMutableData *receivedData;
NSInteger state=0;
NSInteger calendarCount=0;
NSMutableArray *calIDS;

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d{
    if(receivedData==nil)
        receivedData = [[NSMutableData alloc]init];
    [receivedData appendData:d];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *json_string = [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",json_string);
    // Create SBJSON object to parse JSON
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    NSDictionary *JSONdict = [parser objectWithString:json_string error:nil];
    NSArray *JSONResponse = [JSONdict objectForKey:@"items"];

    
    if(state == 0){
        calIDS = [[NSMutableArray alloc]init];
        // parse the JSON string into an object
        for(int i =0;i<JSONResponse.count;i++){
            NSDictionary *dict = [JSONResponse objectAtIndex:i];
            NSString *id=[dict objectForKey:@"id"];
            [calIDS addObject:id];
            NSLog(@"cal%d id: %@",i,id);
        }
        
        state = 1;
        receivedData=nil;
        for(NSString *calID in calIDS){
            NSString *url = [NSString stringWithFormat:@"https://www.googleapis.com/calendar/v3/calendars/%@/events?access_token=%@",[calID stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding],[self.model accessToken]];
            NSLog(@"%@", url);
            NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
            [request setHTTPMethod:(NSString *)@"GET"];
            NSURLConnection *connection2 = [[NSURLConnection alloc] initWithRequest:(NSURLRequest *)request delegate: self];
            [connection2 start];
        }
        return;
    }
    if(state == 1)
    {
        // parse the JSON string into an object
        for(int i =0;i<JSONResponse.count;i++){
            NSDictionary *dict = [JSONResponse objectAtIndex:i];
            NSString *id=[dict objectForKey:@"id"];
            NSLog(@"cal%d id: %@",i,id);
            //add the events to the model
            Event *event = [[Event alloc]init];
            [event setEventID:id];
            [event setTitle:[dict objectForKey:@"summary"]];
            [event setSummary:[dict objectForKey:@"description"]];
            [event setCalID:[calIDS objectAtIndex:calendarCount]];
            NSDate *startDate = [(NSDictionary *)[dict objectForKey:@"start"] objectForKey:@"dateTime"];
            NSDate *endDate = [(NSDictionary *)[dict objectForKey:@"end"] objectForKey:@"dateTime"];
            [event setStartTime: startDate];
            [event setStartTime: endDate];
            [[self.model eventList] addObject:event];
        }
        if(calendarCount == ([calIDS count]-1))
            [self.tableView reloadData];
        calendarCount++;
        
        
    }
    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"response recieved");
    receivedData=nil;
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"failed with error.");
}
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge{
    NSLog(@"authentication needed!");
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.model = [CalendarModel instance];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.model = [CalendarModel instance];
    [self populateModel];
    
}

- (void) populateModel
{
    NSString *url = [NSString stringWithFormat:@"https://www.googleapis.com/calendar/v3/users/me/calendarList?access_token=%@",[self.model accessToken]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:(NSString *)@"GET"];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:(NSURLRequest *)request delegate: self];
    [connection start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.model eventList] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[[self.model eventList] objectAtIndex:indexPath.row] title] ;
    return cell;
}

@end
