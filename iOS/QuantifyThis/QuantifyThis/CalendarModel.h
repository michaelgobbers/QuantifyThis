//
//  CalendarModel.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalendarModel : NSObject

@property (strong, atomic) NSMutableArray *eventList;
@property (strong, atomic) NSString *accessToken;
@property (strong, atomic) CalendarModel *instance;

+ (CalendarModel *)instance;

@end
