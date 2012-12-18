//
//  HeartBeatController.m
//  QuantifyThis
//
//  Created by Nik Torfs on 23/10/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "HeartBeatController.h"

@implementation HeartBeatController
@synthesize taps = _taps;
@synthesize beatsPerMinute = _beatsPerMinute;
@synthesize lastTap = _lastTap;
@synthesize nbOfSameBpmInARow = _nbOfSameBpmInARow;
@synthesize totalTime = _totalTime;
@synthesize startTime = _startTime;


-(id) init
{
    if(self = [super init]){
        self.taps=0;
        self.nbOfSameBpmInARow=0;
        self.totalTime=0;
    }
    return self;
}
-(void) viewWillDisappear:(BOOL)animated{
    // check if backbutton is pressed
    if([self.navigationController.viewControllers indexOfObject:self]==NSNotFound){
        NSInteger bpm = [[_beatsPerMinute text] integerValue];
        [[self delegate] registerHeartbeat:bpm];
    }
    [super viewWillDisappear:animated];
}
- (void) touchesBegan:(NSSet *)touches
            withEvent:(UIEvent *)event {
    self.taps++;
    if(self.lastTap == nil){
        self.lastTap = [NSDate date];
        self.startTime = [NSDate date];
    }
    NSTimeInterval timeSinceLastTap = [[NSDate date] timeIntervalSinceDate:self.lastTap];
    if(self.nbOfSameBpmInARow<3 && timeSinceLastTap<3){
        int bpm = [[self.beatsPerMinute text] intValue];
        self.totalTime = self.totalTime + timeSinceLastTap;
        double timeFactor = (self.totalTime/60);
        //NSLog(@"%f", timeFactor);
        
            
        bpm = (self.taps-1) / timeFactor;
        if(bpm == [[self.beatsPerMinute text] intValue])
            self.nbOfSameBpmInARow++;
        else
            self.nbOfSameBpmInARow = 0;
        NSLog(@"%i", self.nbOfSameBpmInARow);
        [self.beatsPerMinute setText:[NSString stringWithFormat:@"%i", bpm]];
        self.lastTap = [NSDate date];
    }
}

@end

