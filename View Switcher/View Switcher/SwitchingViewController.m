//
//  ViewController.m
//  View Switcher
//
//  Created by admin on 9/5/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import "SwitchingViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface SwitchingViewController ()
@property (strong,nonatomic) YellowViewController* yellowViewController;
@property (strong,nonatomic) BlueViewController* blueViewController;
@end

@implementation SwitchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchViews:(id)sender {
}

@end
