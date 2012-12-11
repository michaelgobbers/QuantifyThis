//
//  MoodEntry.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "MoodEntry.h"

@implementation MoodEntry

@synthesize moodValues = _moodValues;
@synthesize entryDate = _entryDate;

- (id) initWithValue1:(NSNumber*)value1 Value2:(NSNumber*)value2 Value3:(NSNumber*)value3 Value4:(NSNumber*)value4 Value5:(NSNumber*)value5 createdOn:(NSDate *)date
{
    if(self = [super init]){
        self.moodValues = [[NSArray alloc] initWithObjects:value1, value2, value3, value4, value5, nil];
        self.entryDate = date;
    }
    return self;
}

@end
