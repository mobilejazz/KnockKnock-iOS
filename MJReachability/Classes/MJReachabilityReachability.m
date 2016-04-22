//
//  MJReachabilityReachability.m
//  SimonScena
//
//  Created by Paolo Tagliani on 26/01/16.
//  Copyright © 2016 Simon. All rights reserved.
//

#import "MJReachabilityReachability.h"
#import <Reachability.h>

@implementation MJReachabilityReachability {
    Reachability *_reachability;
    BOOL _serviceAvailable;
}

+ (instancetype)sharedReachability {
    static MJReachabilityReachability *sharedReachability = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedReachability = [[MJReachabilityReachability alloc] init];
    });
    return sharedReachability;
}

- (void)awake {
    [self awakeWithHost:@"www.google.com"];
}

- (void)awakeWithHost:(NSString *)host {
    if (_reachability) {
        _reachability = nil;
    }

    _reachability = [Reachability reachabilityWithHostName:host];
}

#pragma mark Private Methods

- (BOOL)isReachable {
    return [self isReachableVia:MJReachabilityTypeAny];
}

- (BOOL)isReachableVia:(MJReachabilityType)type {
    if (type == MJReachabilityTypeCellular) {
        return [_reachability isReachableViaWWAN];
    }
    else if (type == MJReachabilityTypeWifi) {
        return [_reachability isReachableViaWiFi];
    }
    else //if (type == MJReachabilityTypeAny)
    {
        return [_reachability isReachable];
    }
}


@end
