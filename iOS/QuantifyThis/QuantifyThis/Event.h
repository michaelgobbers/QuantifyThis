//
//  Event.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (strong, atomic) NSString *calID;
@property (strong, atomic) NSString *eventID;
@property (strong, atomic) NSString *title;
@property (strong, atomic) NSString *summary;
@property (strong, atomic) NSDate *startTime;
@property (strong, atomic) NSDate *endTime;
@end
