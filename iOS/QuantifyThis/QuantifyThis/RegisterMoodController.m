//
//  RegisterMoodController.m
//  QuantifyThis
//
//  Created by Nik Torfs on 15/10/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "RegisterMoodController.h"
#import "HeartBeatController.h"

@implementation RegisterMoodController

- (IBAction)registerMood:(id)sender {
    NSLog(@"register mood");
    // get weather data
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString: @"heartbeatSegue"] ||
       [segue.identifier isEqualToString:@"sleepSegue"]){
        [[segue destinationViewController] setDelegate: self];
    }
}

// heartbeat protocol
- (void) registerHeartbeat:(NSInteger *) bpm{
    NSLog(@"heartrate measured bpm:%d", *bpm);
}

//sleep protocol
- (void) registerSleepTime:(NSUInteger *)time quality:(NSUInteger *)quality{
    NSLog(@"Sleep measured time :%u quality:%u", *time, *quality);
}

@end
