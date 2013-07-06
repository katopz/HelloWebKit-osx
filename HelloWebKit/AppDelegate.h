//
//  AppDelegate.h
//  CanonWeb
//
//  Created by Todsaporn Banjerdkit on 7/6/13.
//  Copyright (c) 2013 Todsaporn Banjerdkit (katopz). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WebView;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;

@end
