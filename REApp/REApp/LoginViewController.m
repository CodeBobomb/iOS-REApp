//
//  LoginViewController.m
//  REApp
//
//  Created by academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "LoginViewController.h"
#import "REA.h"
#import "User.h"
#import "Client.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

NSString* username;
NSString* password;
bool checkpass = NO;
double chrabl;
Client* klijent2;
REA* r2;
- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view. or not
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginClicked:(id)sender {
    username = self.usernameText.text;
    password = self.passwordText.text;
    Client* klijent1 = [[Client alloc] initWithUser:@"azra" withPass:@"leki" andID:@"1"];
    
    REA* rea=[REA initREA];
    r2=rea;
    [rea addClient:klijent1];
    //klijent2=klijent1;
    if([rea findClientByName:username]!=nil )
    {
        User *checkUser = [rea findClientByName:username];
    checkpass = [checkUser checkPassword:password];
        chrabl=checkpass;
        
    }
 // if(checkpass==YES)
    [self performSegueWithIdentifier:@"showItems" sender:self];
}

//[[NSString alloc] initWithFormat:@"%@",chrabl]
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqual: @"showItems"]) {
        
        Client* c1=[r2 findClientByName:username];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:([r2 findClientByName:username].password)  message:@"" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil];
        [alert show];
       
        
    }
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
