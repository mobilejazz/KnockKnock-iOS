//
//  MJReachability.h
//  Mobile Jazz
//
//  Created by Paolo Tagliani on 26/01/16.
//  Copyright © 2016 Mobile Jazz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, MJReachabilityType) {
    MJReachabilityTypeAny,
    MJReachabilityTypeWifi,
    MJReachabilityTypeCellular
};

/**
 * Reachability protocol.
 **/
@protocol MJReachabilityProtocol <NSObject>

+ (instancetype)sharedReachability;

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
- (BOOL)isReachable;

/**
 * YES if reachable via the specific type, NO otherwise.
 **/
- (BOOL)isReachableVia:(MJReachabilityType)type;

@end
