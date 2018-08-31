//
//  AViewController.m
//  EffectiveObjectiveC
//
//  Created by Jun Zhou on 2018/8/31.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)loadView {
    [super loadView];
    NSLog(@"A loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"A viewDidLoad");
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"A viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"A viewDidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"A viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"A viewWillDisappear");
}


@end
