//
//  MJViewController.m
//  MJReachability
//
//  Created by Paolo Tagliani on 04/22/2016.
//  Copyright (c) 2016 Paolo Tagliani. All rights reserved.
//

#import "MJViewController.h"

#import <MJReachability.h>

@interface MJViewController ()

@property (weak, nonatomic) IBOutlet UILabel *anyConnectionLabel;
@property (weak, nonatomic) IBOutlet UILabel *wifiConnectionLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellularConnectionLabel;

@end

@implementation MJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self mj_updateLabelsWithReachability];

    [NSTimer scheduledTimerWithTimeInterval:0.5
 target:self selector:@selector(mj_updateLabelsWithReachability) userInfo:nil repeats:YES];
    
}

- (void)mj_updateLabelsWithReachability {
    MJReachability *reachability = [MJReachability sharedReachability];
    
    _anyConnectionLabel.text = [reachability isReachableVia:MJReachabilityTypeAny] ? @"Reachable via any interface" : @"Not reachabla via any interface";
    _wifiConnectionLabel.text = [reachability isReachableVia:MJReachabilityTypeWifi] ? @"Reachable via wifi" : @"Not reachable via Wifi";
    
    _cellularConnectionLabel.text = [reachability isReachableVia:MJReachabilityTypeCellular] ? @"Reachable via cellular" : @"Not reachable via cellular";
}

@end
