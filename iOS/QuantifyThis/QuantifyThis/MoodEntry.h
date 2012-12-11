//
//  MoodEntry.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoodEntry : NSObject

@property (strong, atomic) NSArray *moodValues;
@property (strong, atomic) NSDate *entryDate;
@property NSInteger bpm;

-(id) initWithValue1:(NSNumber*) value1 Value2:(NSNumber*) value2 Value3:(NSNumber*) value3 Value4:(NSNumber*) value4 Value5:(NSNumber*) value5 createdOn:(NSDate *) date;

@end
