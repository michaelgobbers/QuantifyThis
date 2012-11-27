//
//  RegisterMoodController.h
//  QuantifyThis
//
//  Created by Nik Torfs on 15/10/12and edited by Sander
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeartBeatController.h"
#import "SleepController.h"
#import <CoreLocation/CoreLocation.h>
@protocol PostDelegate <NSObject>

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d;
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
@end


@interface RegisterMoodController : UIViewController <HeartBeatCallback, SleepCallback, CLLocationManagerDelegate, PostDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *currentLocation;

- (IBAction)registerMood:(id)sender;

@end
