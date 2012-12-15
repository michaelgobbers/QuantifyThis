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
@synthesize graphData2 = _graphData2;
@synthesize graphData3 = _graphData3;
@synthesize graphData4 = _graphData4;
@synthesize graphData5 = _graphData5;

// Initialise the scatter plot in the provided hosting view with the provided data.
// The data array should contain NSValue objects each representing a CGPoint.
-(id)initWithHostingView:(CPTGraphHostingView *)hostingView andData:(NSMutableArray *)data andData2:(NSMutableArray *)data2 andData3:(NSMutableArray *)data3 andData4:(NSMutableArray *)data4 andData5:(NSMutableArray *)data5
{
    self = [super init];
    
    if ( self != nil ) {
        self.hostingView = hostingView;
        self.graphData = data;
        self.graphData2 = data2;
        self.graphData3 = data3;
        self.graphData4 = data4;
        self.graphData5 = data5;
        self.graph = nil;
    }
    
    return self;
}

// This does the actual work of creating the plot if we don't already have a graph object.
-(void)initialisePlot
{
    NSTimeInterval oneDay = 24 * 60 * 60;
    NSDate *refDate = [NSDate dateWithTimeIntervalSince1970:0];
    
    
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
    self.graph.plotAreaFrame.paddingBottom = 50.0f;
    self.graph.plotAreaFrame.paddingLeft = 50.0f;
    
    // Tie the graph we've created with the hosting view.
    self.hostingView.hostedGraph = self.graph;
    
    // If you want to use one of the default themes - apply that here.
    [self.graph applyTheme:[CPTTheme themeNamed:kCPTPlainWhiteTheme]];
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle1 = [CPTMutableLineStyle lineStyle];
    lineStyle1.lineColor = [CPTColor greenColor];
    lineStyle1.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle2 = [CPTMutableLineStyle lineStyle];
    lineStyle2.lineColor = [CPTColor redColor];
    lineStyle2.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle3 = [CPTMutableLineStyle lineStyle];
    lineStyle3.lineColor = [CPTColor blueColor];
    lineStyle3.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle4 = [CPTMutableLineStyle lineStyle];
    lineStyle4.lineColor = [CPTColor cyanColor];
    lineStyle4.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the data line.
    CPTMutableLineStyle *lineStyle5 = [CPTMutableLineStyle lineStyle];
    lineStyle5.lineColor = [CPTColor brownColor];
    lineStyle5.lineWidth = 2.0f;
    
    // Create a line style that we will apply to the axis
    CPTMutableLineStyle *lineStyleBlack = [CPTMutableLineStyle lineStyle];
    lineStyleBlack.lineColor = [CPTColor blackColor];
    lineStyleBlack.lineWidth = 2.0f;
    
    // Create a text style that we will use for the axis labels.
    CPTMutableTextStyle *textStyle = [CPTMutableTextStyle textStyle];
    textStyle.fontName = @"Helvetica";
    textStyle.fontSize = 14;
    textStyle.color = [CPTColor  blackColor];
    
    // Create the plot symbol we're going to use.
    CPTPlotSymbol *plotSymbol = [CPTPlotSymbol hexagonPlotSymbol];
    plotSymbol.lineStyle = lineStyleBlack;
    plotSymbol.size = CGSizeMake(8.0, 8.0);
    
    // Setup some floats that represent the min/max values on our axis.
    float xAxisMin = [[NSDate date] timeIntervalSince1970] - (oneDay*7);
    float xAxisMax = [[NSDate date] timeIntervalSince1970];
    float yAxisMin = 0;
    float yAxisMax = 100;
    
    // We modify the graph's plot space to setup the axis' min / max values.
    CPTXYPlotSpace *plotSpace = (CPTXYPlotSpace *)self.graph.defaultPlotSpace;
    plotSpace.xRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(xAxisMin) length:CPTDecimalFromFloat(xAxisMax - xAxisMin)];
    plotSpace.yRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(yAxisMin) length:CPTDecimalFromFloat(yAxisMax - yAxisMin)];
    plotSpace.allowsUserInteraction = YES;
    
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
    plot.identifier = @"mood1";
    plot.dataLineStyle = lineStyle1;
    plot.plotSymbol = plotSymbol;
    [self.graph addPlot:plot];
    //mood2 plot
    CPTScatterPlot *plot2 = [[[CPTScatterPlot alloc] init] autorelease];
    plot2.dataSource = self;
    plot2.identifier = @"mood2";
    plot2.dataLineStyle = lineStyle2;
    plot2.plotSymbol = plotSymbol;
    [self.graph addPlot:plot2];
    //mood3 plot
    CPTScatterPlot *plot3 = [[[CPTScatterPlot alloc] init] autorelease];
    plot3.dataSource = self;
    plot3.identifier = @"mood3";
    plot3.dataLineStyle = lineStyle3;
    plot3.plotSymbol = plotSymbol;
    [self.graph addPlot:plot3];
    //mood4 plot
    CPTScatterPlot *plot4 = [[[CPTScatterPlot alloc] init] autorelease];
    plot4.dataSource = self;
    plot4.identifier = @"mood4";
    plot4.dataLineStyle = lineStyle4;
    plot4.plotSymbol = plotSymbol;
    [self.graph addPlot:plot4];
    //mood5 plot
    CPTScatterPlot *plot5 = [[[CPTScatterPlot alloc] init] autorelease];
    plot5.dataSource = self;
    plot5.identifier = @"mood5";
    plot5.dataLineStyle = lineStyle5;
    plot5.plotSymbol = plotSymbol;
    [self.graph addPlot:plot5];
    
    //Legend
    self.graph.legend = [CPTLegend legendWithGraph:self.graph];
    self.graph.legend.numberOfColumns = 2;
    self.graph.legend.textStyle = axisSet.xAxis.titleTextStyle;
    self.graph.legend.fill = [CPTFill fillWithColor:[CPTColor lightGrayColor]];
    self.graph.legend.borderLineStyle = axisSet.xAxis.axisLineStyle;
    self.graph.legend.cornerRadius = 5.0;
    self.graph.legend.swatchSize = CGSizeMake(25.0, 25.0);
    self.graph.legendAnchor = CPTRectAnchorTopLeft;
    self.graph.legendDisplacement = CGPointMake(0.0, 0.0);
}

// Delegate method that returns the number of points on the plot
-(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot
{
    NSLog(@"%@", plot.identifier);
    if ( [plot.identifier isEqual:@"mood1"] )
    {
        return [self.graphData count];
    }
    if ( [plot.identifier isEqual:@"mood2"] )
    {
        return [self.graphData2 count];
    }
    if ( [plot.identifier isEqual:@"mood3"] )
    {
        return [self.graphData3 count];
    }
    if ( [plot.identifier isEqual:@"mood4"] )
    {
        return [self.graphData4 count];
    }
    if ( [plot.identifier isEqual:@"mood5"] )
    {
        return [self.graphData5 count];
    }
    
    return 0;
}

// Delegate method that returns a single X or Y value for a given plot.
-(NSNumber *)numberForPlot:(CPTPlot *)plot field:(NSUInteger)fieldEnum recordIndex:(NSUInteger)index
{
    if ( [plot.identifier isEqual:@"mood1"])
    {
        NSDecimalNumber *num = [[self.graphData objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    if ( [plot.identifier isEqual:@"mood2"])
    {
        NSDecimalNumber *num = [[self.graphData2 objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    if ( [plot.identifier isEqual:@"mood3"])
    {
        NSDecimalNumber *num = [[self.graphData3 objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    if ( [plot.identifier isEqual:@"mood4"])
    {
        NSDecimalNumber *num = [[self.graphData4 objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    if ( [plot.identifier isEqual:@"mood5"])
    {
        NSDecimalNumber *num = [[self.graphData5 objectAtIndex:index] objectForKey:[NSNumber numberWithInt:fieldEnum]];
        return num;
    }
    
    return [NSNumber numberWithInt:0];
}


@end
