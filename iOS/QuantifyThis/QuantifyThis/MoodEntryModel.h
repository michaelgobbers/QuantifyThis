//
//  moodEntryModel.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoodEntry.h"
@interface MoodEntryModel : NSObject

@property(strong, atomic) NSMutableArray *entries;

- (void) addEntry:(MoodEntry*)entry;
- (NSInteger) averageFromMoodIndex:(int)index OnDate:(NSDate*)date;
- (NSArray *) sortedEntries;

@end
