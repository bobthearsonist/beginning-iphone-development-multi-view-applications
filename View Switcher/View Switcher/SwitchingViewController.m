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
    
    self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"];
    [self addChildViewController:self.blueViewController];
    self.blueViewController.view.frame = self.view.frame;
    [self switchViewFromViewController:nil toViewController:self.blueViewController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    if(!self.blueViewController.view.superview)
    {
        self.blueViewController = nil;
    }
    else
    {
        self.yellowViewController = nil;
    }
}

- (IBAction)switchViews:(id)sender {
    //lazy initialize controllers
    if(!self.yellowViewController.view.superview)
    {
        if(!self.yellowViewController)
        {
            self.yellowViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Yellow"];
        }
    }
    else
    {
        if (!self.blueViewController)
        {
            self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"]
        }
    }
    
    //SwitchViewVontrollers
    if(!self.yellowViewController.view.superview)
    {
        self.yellowViewController.view.frame = self.view.frame;
        [self switchViewFromViewController:self.blueViewController toViewController:self.yellowViewController];
    }
    else
    {
        self.blueViewController.view.frame = self.view.frame;
        [self switchViewFromViewController:self.yellowViewController toViewController:self.blueViewController];
    }
}

-(void) switchViewFromController:(UIViewController*)fromVC toViewController:(UIViewController*)toVC
{
    if(fromVC != nil)
    {
        [fromVC willMoveToParentViewController:nil];
        [fromVC.view removeFromSuperview];
        [fromVC removeFromParentViewController];
    }
    
    if(toVC != nil)
    {
        [self addChildViewController:toVC];
        [self.view insertSubview:toVC.view atIndex:0];
        [toVC didMoveToParentViewController:self];
    }
}

@end
