//
//  SleepControllerViewController.m
//  QuantifyThis
//
//  Created by Nik Torfs on 23/10/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "SleepController.h"

@implementation SleepController

-(void) viewWillDisappear:(BOOL)animated{
    // check if backbutton is pressed
    if([self.navigationController.viewControllers indexOfObject:self]==NSNotFound){
        NSUInteger time = 2;
        NSUInteger q = 5;
        [[self delegate] registerSleepTime:&time quality:&q];
    }
    [super viewWillDisappear:animated];
}


@end
