//
//  CalendarLoginViewController.m
//  QuantifyThis
//
//  Created by Michael Gobbers on 20/12/12.
//  Copyright (c) 2012 KULeuven. All rights reserved.
//

#import "CalendarLoginViewController.h"
#import "SBJson.h"
#import "CalendarModel.h"

@interface CalendarLoginViewController ()

@end

@implementation CalendarLoginViewController

@synthesize webview = _webview;



- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"response recieved");
    
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d{
    NSString *json_string = [[NSString alloc] initWithData:d encoding:NSUTF8StringEncoding];
    // Create SBJSON object to parse JSON
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    // parse the JSON string into an object
    NSDictionary *JSONResponse = [parser objectWithString:json_string error:nil];
    NSString *access_token = [JSONResponse objectForKey:@"access_token"];
    NSLog(@"access token: %@", access_token);
    CalendarModel *model = [CalendarModel instance];
    model.accessToken = access_token;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login Success"
                                                    message:@"You have successfully logged in."
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"failed with error.");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"connection finished loading");
}
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge{
    NSLog(@"authentication needed!");
}


- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSString *theTitle=[self.webview stringByEvaluatingJavaScriptFromString:@"document.title"];
    if([[theTitle commonPrefixWithString:@"Success code" options:NSCaseInsensitiveSearch] compare:@"Success code"] == NSOrderedSame)
    {
        NSString *authCode = [theTitle substringFromIndex:13];
        //auhorization token received and do not load redirect url.
        NSURL *url = [NSURL URLWithString:@"about:blank"];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [self.webview loadRequest:requestObj];
        //execute post request to get the access token.
        NSURL *url2 = [NSURL URLWithString:@"https://accounts.google.com/o/oauth2/token"];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url2];
        [request setHTTPMethod:(NSString *)@"POST"];
        NSMutableString *parameters = [[NSMutableString alloc] initWithString:[NSString stringWithFormat:@"code=%@",authCode]];
        [parameters appendString:@"&client_id=784611597419-v8473qpjnunb31sq4nqc63kdckbcnn87.apps.googleusercontent.com"];
        [parameters appendString:@"&client_secret=Rgk3ZmZQtBFPbfBI-hlCzOLz"];
        [parameters appendString:@"&redirect_uri=urn:ietf:wg:oauth:2.0:oob"];
        [parameters appendString:@"&grant_type=authorization_code"];
        
        [request setHTTPBody:[parameters dataUsingEncoding:NSUTF8StringEncoding]];
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:(NSURLRequest *)request delegate: self];
        [connection start];
        
    }
}

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
    self.webview.delegate = self;
	NSURL *url = [NSURL URLWithString:@"https://accounts.google.com/o/oauth2/auth?scope=https://www.google.com/calendar/feeds/&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&client_id=784611597419-v8473qpjnunb31sq4nqc63kdckbcnn87.apps.googleusercontent.com"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:requestObj];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"Error : %@",error);
    
}

@end
