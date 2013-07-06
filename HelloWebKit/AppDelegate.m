//
//  AppDelegate.m
//  CanonWeb
//
//  Created by Todsaporn Banjerdkit on 7/6/13.
//  Copyright (c) 2013 Todsaporn Banjerdkit (katopz). All rights reserved.
//

#import "AppDelegate.h"
#import <WebKit/WebKit.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{  
    // load via string
    /*
    NSString* filePath = [[NSBundle mainBundle] pathForResource: @"index" ofType: @"html" inDirectory :@"contents"];
    NSLog(@"filePath is %@", filePath);
    NSURL *baseUrl = [NSURL fileURLWithPath:[filePath stringByDeletingLastPathComponent]];
    NSLog(@"baseUrl is %@", baseUrl);
    NSString *webString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    [self.webView.mainFrame loadHTMLString: webString baseURL: baseUrl];
     */
    
    // load via request
    NSString* filePath = [[NSBundle mainBundle] pathForResource: @"index" ofType: @"html" inDirectory :@"contents"];
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:filePath]]];
    
    // toggle full screen
    [self.window toggleFullScreen:@""];
}

@end
