//
//  StatisticsContoller.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 11/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CorePlot-CocoaTouch.h"
#import "TutScatterPlot.h"

@interface StatisticsContoller : UIViewController{
    
    IBOutlet CPTGraphHostingView *graphHostingView;
    TutScatterPlot *_scatterPlot;
}

@property (nonatomic, retain) TutScatterPlot *scatterPlot;

@end
