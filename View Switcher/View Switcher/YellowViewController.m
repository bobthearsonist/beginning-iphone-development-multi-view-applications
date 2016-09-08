//
//  YellowViewController.m
//  View Switcher
//
//  Created by admin on 9/7/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)yellowButtonPressed
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Yellow View Button Pressed"
                                                                   message:@"You pressed the button on the yellow view"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* action = [UIAlertAction actionWithTitle:@"Yes I did"
                                                     style:UIAlertActionStyleDefault
                                                   handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
