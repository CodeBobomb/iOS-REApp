//
//  SignUpViewController.h
//  REApp
//
//  Created by academy387 on 12/10/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *UsernameTxt;
@property (weak, nonatomic) IBOutlet UITextField *EnterPassTxt;
@property (weak, nonatomic) IBOutlet UITextField *EmailTxt;
@property (weak, nonatomic) IBOutlet UITextField *RetypePassTxt;
@property (weak, nonatomic) IBOutlet UIButton *BackBtn;
@property (weak, nonatomic) IBOutlet UIButton *OkBtn;

@end
