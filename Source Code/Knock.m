//
// Copyright 2016 Mobile Jazz SL
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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
