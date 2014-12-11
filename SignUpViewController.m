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

-(BOOL) ValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
} /*- (BOOL) validateEmail: (NSString *) candidate {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Z0-9a-z._%+-]+[.][A-Z0-9a-z._%+-]+";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    
    return [emailTest evaluateWithObject:candidate];
}*/
  
- (IBAction)OkClicked:(id)sender {
    username = self.UsernameTxt.text;
    pass = self.EnterPassTxt.text;
    rpass=self.RetypePassTxt.text;
    email=self.EmailTxt.text;
    
    //if(email containsString:@"@")
 /*   NSString *regEx = [NSString stringWithFormat:@"*@*"];
    NSRange range = [email rangeOfString:regEx options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        //NSMessagePort *poruka;
        //poruka.
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popunite sve podatke ispravno!" message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
        [alert show];
        alert = nil;
        [self.EmailTxt becomeFirstResponder];
        
        

    } */
  //  [self.UsernameTxt becomeFirstResponder];

    BOOL ispravnostEmaila=[self ValidEmail:email];
    
    if(ispravnostEmaila == YES && rpass==pass && username !=nil)
  {[self performSegueWithIdentifier:@"OkClick" sender:self];}
    
    
     if([username isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popunite username polje ispravno!" message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
        [alert show];
        alert = nil;
        [self.UsernameTxt becomeFirstResponder];
        
    }

    
    
    if(ispravnostEmaila == NO ){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popunite email polje ispravno!" message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
    [alert show];
    alert = nil;
    [self.EmailTxt becomeFirstResponder];
    
    }
    
    if(pass != rpass || [pass isEqualToString:@""])
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popunite password polje ispravno!" message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
            [alert show];
            alert = nil;
            [self.EnterPassTxt becomeFirstResponder];
            
        }
    
    
}
- (IBAction)test:(id)sender {
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
