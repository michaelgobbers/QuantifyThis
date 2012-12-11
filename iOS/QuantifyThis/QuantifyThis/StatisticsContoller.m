//
//  StatisticsContoller.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "StatisticsContoller.h"

@interface StatisticsContoller ()

@end

@implementation StatisticsContoller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSTimeInterval oneDay = 24 * 60 * 60;
    
    NSMutableArray *newData = [NSMutableArray array];
    NSUInteger i;
    
    
    
    for ( i = 0; i < 7; i++ ) {
        NSTimeInterval x = oneDay*i;
        id y = [NSDecimalNumber numberWithFloat:arc4random() % 100];
        [newData addObject:
         [NSDictionary dictionaryWithObjectsAndKeys:
          [NSDecimalNumber numberWithFloat:x], [NSNumber numberWithInt:CPTScatterPlotFieldX],
          y, [NSNumber numberWithInt:CPTScatterPlotFieldY],
          nil]];
    }
    
    self.scatterPlot = [[TutScatterPlot alloc] initWithHostingView:graphHostingView andData:newData];
    [self.scatterPlot initialisePlot];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
