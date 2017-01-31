//
//  ViewController.m
//  Clickable UILabel
//
//  Created by Ferrakkem Bhuiyan on 31/1/17.
//  Copyright © 2017 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
{
    UITapGestureRecognizer *gesture;
    UILabel *myLabelTwo;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#pragma mark:: call_UILabel
    [self createClickableUILabel];
}

#pragma mark ::: Create clcikable UILabel
-(void)createClickableUILabel
{
    _myClickableLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 50, 300-20, 50)];
    _myClickableLabel.backgroundColor = [UIColor clearColor];
    _myClickableLabel.textAlignment = NSTextAlignmentCenter;
    _myClickableLabel.textColor = [UIColor greenColor];
    _myClickableLabel.numberOfLines = 0;
    _myClickableLabel.text = @"Subemt";
    
#pragma mark :: set_UILabel_borderWidth_Border_color_cornerRadious
    _myClickableLabel.layer.borderWidth = 1.0;
    _myClickableLabel.layer.borderColor = [UIColor darkGrayColor].CGColor;
    _myClickableLabel.layer.cornerRadius = 5.00f;
    
#pragma mark :: set_user_interaction
    
    _myClickableLabel.userInteractionEnabled = YES;
    gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelClick)];
    [_myClickableLabel addGestureRecognizer:gesture];
    
     [self.view addSubview:_myClickableLabel];
    
}

#pragma mark :: create user TapGestureRecognizer method
- (void)labelClick
{
    //[self createMyUILabel];
}

//#pragma mark :: Create second UILabel
//-(void) createMyUILabel
//{
//    myLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 300-20, 50)];
//    myLabelTwo.backgroundColor = [UIColor grayColor];
//    myLabelTwo.textAlignment = NSTextAlignmentCenter;
//    myLabelTwo.textColor = [UIColor greenColor];
//    myLabelTwo.numberOfLines = 0;
//    myLabelTwo.text = @"Successfully submit :)";
//    
//#pragma mark :: set_UILabel_borderWidth_Border_color_cornerRadious
//    
//    myLabelTwo.layer.borderWidth = 1.00f;
//    myLabelTwo.layer.borderColor = [UIColor brownColor].CGColor;
//    myLabelTwo.layer.cornerRadius = 5.00f;
//    
//    [self.view addSubview: myLabelTwo];
//    
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
