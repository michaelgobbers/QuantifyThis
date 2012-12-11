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
#import "MoodEntryModel.h"

@protocol GETDelegate <NSObject>

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d;
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
@end

@interface StatisticsContoller : UIViewController<GETDelegate>{
    
    IBOutlet CPTGraphHostingView *graphHostingView;
    TutScatterPlot *_scatterPlot;
    
}

@property (nonatomic, retain) TutScatterPlot *scatterPlot;
@property (strong, atomic) MoodEntryModel *model;

@end
