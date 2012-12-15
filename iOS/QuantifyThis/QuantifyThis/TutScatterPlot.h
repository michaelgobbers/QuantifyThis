//
//  TutScatterPlot.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CorePlot-CocoaTouch.h"

@interface TutScatterPlot : NSObject  {
    CPTGraphHostingView *_hostingView;
    CPTXYGraph *_graph;
    NSMutableArray *_graphData;
}

@property (nonatomic, retain) CPTGraphHostingView *hostingView;
@property (nonatomic, retain) CPTXYGraph *graph;
@property (nonatomic, retain) NSMutableArray *graphData;
@property (nonatomic, retain) NSMutableArray *graphData2;
@property (nonatomic, retain) NSMutableArray *graphData3;
@property (nonatomic, retain) NSMutableArray *graphData4;
@property (nonatomic, retain) NSMutableArray *graphData5;

// Method to create this object and attach it to it's hosting view.
-(id)initWithHostingView:(CPTGraphHostingView *)hostingView andData:(NSMutableArray *)data andData2:(NSMutableArray *)data2 andData3:(NSMutableArray *)data3 andData4:(NSMutableArray *)data4 andData5:(NSMutableArray *)data5;

// Specific code that creates the scatter plot.
-(void)initialisePlot;

@end
