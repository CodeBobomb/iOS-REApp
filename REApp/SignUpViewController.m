//
//  SignUpViewController.m
//  REApp
//
//  Created by academy387 on 12/10/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end
NSString *username;
NSString *pass;
NSString *rpass;
NSString *email;

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}
- (IBAction)OkClicked:(id)sender {
    username = self.UsernameTxt.text;
    pass = self.EnterPassTxt.text;
    rpass=self.RetypePassTxt.text;
    email=self.EmailTxt.text;
    
    //if(email containsString:@"@")
    NSString *regEx = [NSString stringWithFormat:@"*@*"];
    NSRange range = [email rangeOfString:regEx options:NSRegularExpressionSearch];
    if (range.location == NSNotFound) {
        //NSMessagePort *poruka;
        //poruka.
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popunite sve podatke ispravno!" message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
        [alert show];
        alert = nil;
        [self.EmailTxt becomeFirstResponder];
        
        

    }
    else [self performSegueWithIdentifier:@"OkClick" sender:self];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqual: @"OkClick"]) {
        
       
        
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)OkBtnClicked:(id)sender

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
