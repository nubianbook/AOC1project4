//
//  ViewController.h
//  AOC1_project4
//
//  Created by Carol Gaylor on 11/12/12.
//  Copyright (c) 2012 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *userText, *labelText;
    UITextField *textField;
    UILabel *userViewLabel, *infoLabel, *label;
    UIButton *dateButton, *infoButton;
}

- (void)textFieldShouldReturn:(UITextField *) inputField;

-(void)onClick:(UIButton *)button;

@end
