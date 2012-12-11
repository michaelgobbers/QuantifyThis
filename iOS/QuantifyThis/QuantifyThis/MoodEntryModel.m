//
//  moodEntryModel.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "MoodEntryModel.h"

@implementation MoodEntryModel

@synthesize entries = _entries;

- (id) init
{
    if(self = [super init])
    {
        self.entries = [[NSMutableArray alloc] init];
    }
    return self;
}
//adds an entry to the entrylist
- (void) addEntry:(MoodEntry *)entry
{
    [self.entries addObject:entry];
}
//gets the average for a mood on a given date.
- (NSInteger) averageFromMoodIndex:(int)index OnDate:(NSDate*)date{
    NSInteger total = 0;
    NSInteger count = 0;
    for (int i = 0; i<self.entries.count;i++) {
        MoodEntry *entry = [self.entries objectAtIndex:i];
        if([entry entryDate]==date){
            NSNumber *toBeAdded = (NSNumber *)[[entry moodValues] objectAtIndex:index];
            total += [toBeAdded integerValue];
            count++;
        }
    }
    return total/count;
}

@end
