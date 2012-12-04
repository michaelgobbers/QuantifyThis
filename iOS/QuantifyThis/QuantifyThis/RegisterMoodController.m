//
//  RegisterMoodController.m
//  QuantifyThis
//
//  Created by Nik Torfs on 15/10/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//
#import "RegisterMoodController.h"
#import "HeartBeatController.h"
#import "Constants.h"

@interface RegisterMoodController()
- (NSString *) getWeatherData;
- (NSInteger) getWOEID;
@end

@implementation RegisterMoodController

@synthesize currentLocation = _currentLocation;
@synthesize locationManager = _locationManager;
@synthesize model = _model;
@synthesize bar1;
@synthesize bar2;
@synthesize bar3;
@synthesize bar4;
@synthesize bar5;

- (RegisterMoodModel *)model {
    if (!_model)
        _model = [[RegisterMoodModel alloc]init];
    return _model;
}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"response recieved");
    
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d{
    NSLog(@"data recieved");
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"failed with error.");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"connection finished loading");
}
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge{
    NSLog(@"authentication needed!");
}

- (void)viewDidLoad{
    [super viewDidLoad];

    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    _currentLocation = [_locationManager location];
    //needs to be tested if we need constant location updates, maybe the initial is good enough for our purpose
    //[_locationManager startUpdatingLocation];
}

- (IBAction)registerMood:(id)sender {
    NSString *temp = [self getWeatherData];
    [self.navigationController popViewControllerAnimated:YES];
    NSString *url = @"http://quantifythisapp.appspot.com/DataService";
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:(NSString *)@"POST"];
    NSMutableString *parameters = [[NSMutableString alloc] initWithString:@"request=addMood"];
    
    float value = [bar1 value];
    [parameters appendString:[NSString stringWithFormat:@"&mood1=%d", (int)value]];
    value = [bar2 value];
    [parameters appendString:[NSString stringWithFormat:@"&mood2=%d", (int)value]];
    value = [bar3 value];
    [parameters appendString:[NSString stringWithFormat:@"&mood3=%d", (int)value]];
    value = [bar4 value];
    [parameters appendString:[NSString stringWithFormat:@"&mood4=%d", (int)value]];
    value = [bar5 value];
    [parameters appendString:[NSString stringWithFormat:@"&mood5=%d", (int)value]];
    [parameters appendString:[NSString stringWithFormat:@"&temp=%@", temp]];
    NSInteger bpm = [self.model beatsPerMinute];
    if (bpm!=0) {
       [parameters appendString:[NSString stringWithFormat:@"&bpm=%d",bpm]];
    }
    NSInteger sleepTime = [self.model sleepTime];
    NSInteger sleepQ = [self.model sleepQuality];
    if(sleepTime!=0&&sleepQ!=0){
        [parameters appendString:[NSString stringWithFormat:@"&sleepeff=%d",sleepQ]];
        [parameters appendString:[NSString stringWithFormat:@"&sleephours=%d",sleepTime]];
    }
    
    
    
    

    [request setHTTPBody:[parameters dataUsingEncoding:NSUTF8StringEncoding]];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:(NSURLRequest *)request delegate: self];
    [connection start];
    
    
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString: @"heartbeatSegue"] ||
       [segue.identifier isEqualToString:@"sleepSegue"]){
        [[segue destinationViewController] setDelegate: self];
    }
}

- (NSString *) getWeatherData{

    NSString *urlString = [[NSString alloc] initWithFormat:@"http://weather.yahooapis.com/forecastrss?w=973505&u=c"];
    NSURL *url = [NSURL URLWithString: urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if(error != nil) {
        NSLog(@"%@", [error localizedDescription]);
        // go on without weather (throw Exception)
    }
    
    NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
  //  NSLog(@"%@", responseString);
    
    NSString *temperature = nil;
    NSRange start = [responseString rangeOfString:@"temp=\""];
    if (start.location != NSNotFound)
    {
        temperature = [responseString substringFromIndex:start.location + start.length];
        NSRange end = [temperature rangeOfString:@"\""];
        if (end.location != NSNotFound)
        {
            temperature = [temperature substringToIndex:end.location];
        }
    }
   
    NSLog(@"The temperature is %@ degrees", temperature);
    return temperature;
}

- (NSInteger) getWOEID{
    NSString *urlString = [[NSString alloc] initWithFormat:@"http://where.yahooapis.com/geocode?location=%f,%f&flags=J&gflags=R&appid=%@", [_currentLocation coordinate].latitude, [_currentLocation coordinate].longitude, YAHOO_APP_ID];
    NSURL *url = [NSURL URLWithString: urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if(error != nil) {
        NSLog(@"%@", [error localizedDescription]);
        // go on without weather (throw Exception)
    }
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    if(error != nil) {
        NSLog(@"%@", [error localizedDescription]);
        //go on without weather (throw exception)
    }
    
    NSDictionary *resultSet = [json valueForKey:@"ResultSet"];
    NSArray *results = [resultSet valueForKey:@"Results"];
    NSDictionary *firstResult = results[0];
    return [[firstResult objectForKey:@"woeid"] integerValue];
}

// core location protocol
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    _currentLocation = newLocation;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"%@", [error localizedDescription]);
}


// heartbeat protocol
- (void) registerHeartbeat:(NSInteger) bpm{
    NSLog(@"heartrate measured bpm:%d", bpm);
    [self.model setBeatsPerMinute: bpm];
}

//sleep protocol
- (void) registerSleepTime:(NSUInteger)time quality:(NSUInteger)quality{
    NSLog(@"Sleep measured time :%u quality:%u", time, quality);
    [self.model setSleepQuality:quality];
    [self.model setSleepTime:time];
}
@end
