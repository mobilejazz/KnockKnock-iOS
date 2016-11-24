//
//  KnockReachability.m
//  Mobile Jazz
//
//  Created by Paolo Tagliani on 26/01/16.
//  Copyright © 2016 Mobile Jazz. All rights reserved.
//

#import "Knock.h"
#import <Reachability/Reachability.h>

@implementation Knock
{
    Reachability *_reachability;
    BOOL _serviceAvailable;
}

+ (instancetype)knock
{
    static Knock *sharedReachability = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedReachability = [[Knock alloc] init];
    });
    return sharedReachability;
}

- (void)awake
{
    [self awakeWithHost:@"www.google.com"];
}

- (void)awakeWithHost:(NSString *)host
{
    if (_reachability)
    {
        _reachability = nil;
    }

    _reachability = [Reachability reachabilityWithHostName:host];
}

- (BOOL)areYouThere
{
    return [self whosThere:KKSomeone];
}

- (BOOL)whosThere:(KKActor)type
{
    if (type == KKCellular) {
        return [_reachability isReachableViaWWAN];
    }
    else if (type == KKWifi) {
        return [_reachability isReachableViaWiFi];
    }
    else //if (type == KnockTypeAny)
    {
        return [_reachability isReachable];
    }
}

- (void)knock
{
    NSLog(@"Penny");
}

@end
