//
//  CalendarViewController.h
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarModel.h"

@protocol PostDelegate <NSObject>

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d;
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
@end

@interface CalendarViewController : UITableViewController
@property (strong, atomic) CalendarModel *model;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
