//
//  TutScatterPlot.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//
#import "TutScatterPlot.h"

@implementation TutScatterPlot
@synthesize hostingView = _hostingView;
@synthesize graph = _graph;
@synthesize graphData = _graphData;

// Initialise the scatter plot in the provided hosting view with the provided data.
// The data array should contain NSValue objects each representing a CGPoint.
-(id)initWithHostingView:(CPTGraphHostingView *)hostingView andData:(NSMutableArray *)data
{
    self = [super init];
    
    if ( self != nil ) {
        self.hostingView = hostingView;
        self.graphData = data;
        self.graph = nil;
    }
    
    return self;
}

// This does the actual work of creating the plot if we don't already have a graph object.
-(void)initialisePlot
{
    NSTimeInterval oneDay = 24 * 60 * 60;
    NSDate *refDate = [NSDate date];
    
    // Start with some simple sanity checks before we kick off
    if ( (self.hostingView == nil) || (self.graphData == nil) ) {
        NSLog(@"TUTSimpleScatterPlot: Cannot initialise plot without hosting view or data.");
        return;
    }
    
    if ( self.graph != nil ) {
        NSLog(@"TUTSimpleScatterPlot: Graph object already exists.");
        return;
    }
    
    // Create a graph object which we will use to host just one scatter plot.
    CGRect frame = [self.hostingView bounds];
    self.graph = [[[CPTXYGraph alloc] initWithFrame:frame] autorelease];
    
    // Add some padding to the graph, with more at the bottom for axis labels.
    self.graph.plotAreaFrame.paddingTop = 10.0f;
    self.graph.plotAreaFrame.paddingRight = 2.0f;
    self.graph.plotAreaFrame.paddingBottom = 40.0f;
    self.graph.plotAreaFrame.paddingLeft = 30.0f;
    
    // Tie the graph we've created with the hosting view.
    self.hostingView.hostedGraph = self.graph;
    
    // If you want to use one of the default themes - apply that here.
    [self.graph applyTheme:[CPTTheme themeNamed:kCPTPlainWhiteTheme]];
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle = [CPTMutableLineStyle lineStyle];
    lineStyle.lineColor = [CPTColor blueColor];
    lineStyle.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the axis
    CPTMutableLineStyle *lineStyle2 = [CPTMutableLineStyle lineStyle];
    lineStyle.lineColor = [CPTColor blackColor];
    lineStyle.lineWidth = 2.0f;
    
    // Create a text style that we will use for the axis labels.
    CPTMutableTextStyle *textStyle = [CPTMutableTextStyle textStyle];
    textStyle.fontName = @"Helvetica";
    textStyle.fontSize = 14;
    textStyle.color = [CPTColor  blackColor];
    
    // Create the plot symbol we're going to use.
    CPTPlotSymbol *plotSymbol = [CPTPlotSymbol hexagonPlotSymbol];
    plotSymbol.lineStyle = lineStyle;
    plotSymbol.size = CGSizeMake(8.0, 8.0);
    
    // Setup some floats that represent the min/max values on our axis.
    float xAxisMin = 0;
    float xAxisMax = 7*oneDay;
    float yAxisMin = 0;
    float yAxisMax = 100;
    
    // We modify the graph's plot space to setup the axis' min / max values.
    CPTXYPlotSpace *plotSpace = (CPTXYPlotSpace *)self.graph.defaultPlotSpace;
    plotSpace.xRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(xAxisMin) length:CPTDecimalFromFloat(xAxisMax - xAxisMin)];
    plotSpace.yRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(yAxisMin) length:CPTDecimalFromFloat(yAxisMax - yAxisMin)];
    
    // Modify the graph's axis with a label, line style, etc.
    CPTXYAxisSet *axisSet = (CPTXYAxisSet *)self.graph.axisSet;
    
    
    axisSet.xAxis.titleOffset = 30.0f;
    axisSet.xAxis.axisLineStyle = lineStyle2;
    axisSet.xAxis.majorTickLineStyle = lineStyle2;
    axisSet.xAxis.minorTickLineStyle = lineStyle2;
    axisSet.xAxis.labelTextStyle = textStyle;
    axisSet.xAxis.labelOffset = 0.0f;
    axisSet.xAxis.minorTicksPerInterval = 1;
    axisSet.xAxis.majorIntervalLength = CPTDecimalFromFloat(2*oneDay);
    axisSet.xAxis.majorTickLength = 7.0f;
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
    dateFormatter.dateStyle = kCFDateFormatterShortStyle;
    CPTTimeFormatter *timeFormatter = [[[CPTTimeFormatter alloc] initWithDateFormatter:dateFormatter] autorelease];
    timeFormatter.referenceDate = refDate;
    axisSet.xAxis.labelFormatter = timeFormatter;
    
    axisSet.yAxis.titleOffset = 40.0f;
    axisSet.yAxis.axisLineStyle = lineStyle2;
    axisSet.yAxis.majorTickLineStyle = lineStyle2;
    axisSet.yAxis.minorTickLineStyle = lineStyle2;
    axisSet.yAxis.labelTextStyle = textStyle;
    axisSet.yAxis.labelOffset = 3.0f;
    axisSet.yAxis.majorIntervalLength = CPTDecimalFromFloat(10.0f);
    axisSet.yAxis.minorTicksPerInterval = 1;
    axisSet.yAxis.minorTickLength = 5.0f;
    axisSet.yAxis.majorTickLength = 7.0f;
    NSNumberFormatter *numberFormatter = [[[NSNumberFormatter alloc] init] autorelease];
    dateFormatter.dateStyle = kCFDateFormatterShortStyle;
    numberFormatter.numberStyle = NSNumberFormatterNoStyle;
    axisSet.yAxis.labelFormatter = numberFormatter;
    
    // Add a plot to our graph and axis. We give it an identifier so that we
    // could add multiple plots (data lines) to the same graph if necessary.
    CPTScatterPlot *plot = [[[CPTScatterPlot alloc] init] autorelease];
    plot.dataSource = self;
    plot.identifier = @"mainplot";
    plot.dataLineStyle = lineStyle;
    plot.plotSymbol = plotSymbol;
    [self.graph addPlot:plot];
}

// Delegate method that returns the number of points on the plot
-(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot
{
    if ( [plot.identifier isEqual:@"mainplot"] )
    {
        return [self.graphData count];
    }
    
    return 0;
}

// Delegate method that returns a single X or Y value for a given plot.
-(NSNumber *)numberForPlot:(CPTPlot *)plot field:(NSUInteger)fieldEnum recordIndex:(NSUInteger)index
{
    if ( [plot.identifier isEqual:@"mainplot"])
    {
        NSDecimalNumber *num = [[self.graphData objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    
    return [NSNumber numberWithInt:0];
}

@end
