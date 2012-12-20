//
//  CalendarModel.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "CalendarModel.h"
#import "Event.h"

@implementation CalendarModel

@synthesize eventList = _eventList;
@synthesize accessToken = _accessToken;

- (id) init
{
    if(self = [super init])
    {
        self.eventList = [[NSMutableArray alloc]init];
        Event *event = [[Event alloc] init];
        [event setTitle:@"TestEvent"];
        [self.eventList addObject:event];
    }
        return self;
}


static CalendarModel *instance = NULL;
+ (CalendarModel *)instance
{
    @synchronized(self)
    {
        if (instance == NULL)
            instance = [[self alloc] init];
    }
    
    return(instance);
}

@end
