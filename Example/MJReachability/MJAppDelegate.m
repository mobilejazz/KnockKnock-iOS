//
//  MJAppDelegate.m
//  MJReachability
//
//  Created by Paolo Tagliani on 04/22/2016.
//  Copyright (c) 2016 Paolo Tagliani. All rights reserved.
//

#import "MJAppDelegate.h"

#import <MJReachability/MJReachability.h>

@implementation MJAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Started monitoring reachability
    [[MJReachability sharedReachability] awake];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
