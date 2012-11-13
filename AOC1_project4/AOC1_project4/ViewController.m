//
//  ViewController.m
//  AOC1_project4
//
//  Created by Carol Gaylor on 11/12/12.
//  Copyright (c) 2012 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)onClick:(UIButton *)button

{
    
    if (button.tag != 0)
    {
        UIButton *userViewLabel;
        UIButton *infoLabel = NO;
        UILabel *label;
        NSString *labelText;
        UIButton *infoButton;
        NSString *userText = [textField text];                                         
        if (userText.length > 0) {
            labelText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", userText];
        }
        else {
            labelText = [[NSString alloc] initWithFormat:@"Username Cannot Be Empty", userText];
        }
        userViewLabel; 
    }
    else if(button.tag == 1)
    {
        NSDate *now = [NSDate date];
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];                   
        [formatDate setDateStyle:NSDateFormatterLongStyle];                            
        [formatDate setTimeStyle:NSDateFormatterFullStyle];                             
        NSString* dateSrg;
        dateSrg = [formatDate stringFromDate:now];
        
        UIAlertView *dateView = [[UIAlertView alloc] initWithTitle:@"Date" message:dateSrg 
                                                          delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [dateView show];
    }
    else if(button.tag != 2)
    {
        infoLabel.hidden = NO;
    }

}

- (void)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
}

- (void)viewDidLoad
{
        
   
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor = [UIColor whiteColor];
    
        textField = [[UITextField alloc] initWithFrame:CGRectMake(99.0f, 20.0f, 210.0f, 30.0f)];
    
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 100.0f, 30.0f)];
        label.backgroundColor = [UIColor whiteColor];
        label.text = @"Username:";
        label.textColor = [UIColor blackColor];
        label.textAlignment =  NSTextAlignmentCenter;
        [self.view addSubview:label];
    
        UILabel *userViewlabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 140.0f, 320.0f, 80.0f)];
        userViewlabel.backgroundColor = [UIColor lightGrayColor];
        userViewlabel.text = @"Please Enter Username";
        userViewlabel.numberOfLines = 2;
        userViewlabel.textColor = [UIColor blueColor];
        userViewlabel.textAlignment =  NSTextAlignmentCenter;
        [self.view addSubview:userViewlabel];
    
        UILabel *infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 360.0f, 320.0f, 75.0f)];
        infoLabel.backgroundColor = [UIColor whiteColor];
        infoLabel.text = @"This application was written by Carol Gaylor";
        infoLabel.numberOfLines = 3;
        infoLabel.textColor = [UIColor blackColor];
        infoLabel.textAlignment =  NSTextAlignmentLeft;
        [self.view addSubview:infoLabel];
        
    
    //My Login button
        UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        button.frame = CGRectMake(222.0f, 60.0f, 85.0f, 28.0f);
        button.tintColor = [UIColor magentaColor],
        [button setTitle:@"Login" forState:UIControlStateNormal];
        button.tag = 0;
        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
   
    
    //My Date Button
        UIButton *dateButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        dateButton.frame = CGRectMake(10.0f, 260.0f, 100.0f, 45.0f);
        dateButton.tintColor = [UIColor magentaColor],
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = 1;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    
    //Info button
        UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
        infoButton.frame = CGRectMake(10.0f, 330.0f, 25.0f, 25.0f);
        infoButton.tag = 2;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
        
                                    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
