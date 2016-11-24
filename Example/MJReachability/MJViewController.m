//
//  MJViewController.m
//  Knock
//
//  Created by Paolo Tagliani on 04/22/2016.
//  Copyright (c) 2016 Paolo Tagliani. All rights reserved.
//

#import "MJViewController.h"

#import "Knock.h"

@interface MJViewController ()

@property (weak, nonatomic) IBOutlet UILabel *anyConnectionLabel;
@property (weak, nonatomic) IBOutlet UILabel *wifiConnectionLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellularConnectionLabel;

@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[Knock knock] knock]; // Penny
    [[Knock knock] knock]; // Penny
    [[Knock knock] knock]; // Penny
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self mj_updateLabelsWithReachability];

    [NSTimer scheduledTimerWithTimeInterval:0.5
                                     target:self
                                   selector:@selector(mj_updateLabelsWithReachability)
                                   userInfo:nil
                                    repeats:YES];
    
}

- (void)mj_updateLabelsWithReachability
{
    _anyConnectionLabel.text = [[Knock knock] whosThere:KKSomeone] ? @"Reachable via any interface" : @"Not reachabla via any interface";
    _wifiConnectionLabel.text = [[Knock knock] whosThere:KKWifi] ? @"Reachable via wifi" : @"Not reachable via Wifi";
    _cellularConnectionLabel.text = [[Knock knock] whosThere:KKCellular] ? @"Reachable via cellular" : @"Not reachable via cellular";
}

@end
