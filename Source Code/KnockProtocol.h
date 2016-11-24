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

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, KKActor) {
    KKSomeone,
    KKWifi,
    KKCellular,
};

/**
 * Reachability protocol.
 **/
@protocol KnockProtocol <NSObject>

/**
 * Default instance getter
 **/
+ (instancetype)knock;

/**
 * Awake method to start the reachability observation. This by default ping google.com
 **/
- (void)awake;

/**
 *  Awake method to start reachabilty observation on a custom host.
 *
 *  @param host The hostname
 */
- (void)awakeWithHost:(NSString *)host;

/**
 * YES if reachable, NO otherwise.
 **/
- (BOOL)areYouThere;

/**
 * YES if reachable via the specific actor, NO otherwise.
 **/
- (BOOL)whosThere:(KKActor)type;

/**
 * Prints "Penny" in the console.
 **/
- (void)knock;

@end
