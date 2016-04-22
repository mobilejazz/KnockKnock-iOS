//
//  MJReachabilityReachability.m
//  Mobile Jazz
//
//  Created by Paolo Tagliani on 26/01/16.
//  Copyright © 2016 Mobile Jazz. All rights reserved.
//

#import "MJReachability.h"
#import "Reachability.h"

@implementation MJReachability {
    Reachability *_reachability;
    BOOL _serviceAvailable;
}

+ (instancetype)sharedReachability {
    static MJReachability *sharedReachability = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedReachability = [[MJReachability alloc] init];
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
