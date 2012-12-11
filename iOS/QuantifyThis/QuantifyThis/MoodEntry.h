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

@end
