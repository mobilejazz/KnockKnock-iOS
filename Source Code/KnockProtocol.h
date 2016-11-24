//
//  Knock.h
//  Mobile Jazz
//
//  Created by Paolo Tagliani on 26/01/16.
//  Copyright © 2016 Mobile Jazz. All rights reserved.
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
