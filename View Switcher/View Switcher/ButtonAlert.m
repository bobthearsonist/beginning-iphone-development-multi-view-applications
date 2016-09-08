//
//  ButtonAlert.m
//  View Switcher
//
//  Created by admin on 9/8/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation UIViewController (ButtonAlert)

-(IBAction)ButtonPressed
{
    NSString * viewTitle = self.restorationIdentifier;
    UIAlertController* alert = [UIAlertController
                                alertControllerWithTitle:[NSString stringWithFormat:@"%@ View Button Pressed", viewTitle]
                                message:[NSString stringWithFormat:@"You pressed the button on the %@ view", viewTitle]
                                preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* action = [UIAlertAction
                             actionWithTitle:@"Yes I did"
                             style:UIAlertActionStyleDefault
                             handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}
@end