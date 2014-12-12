//
//  RAViewController.m
//  REApp
//
//  Created by Academy387 on 12/11/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "RAViewController.h"
#import "REA.h"
#import "MakeReservationViewController.h"
#import "MorePhotosViewController.h"

@interface RAViewController ()

@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)morePhotosClick:(id)sender {
    [self performSegueWithIdentifier:@"showMorePhotos" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showMorePhotos"]){
        MorePhotosViewController* controller = (MorePhotosViewController*) [segue destinationViewController];
        [controller setRaID: [[REA initREA] findRealEstate:@"1"].reID];
    }
    if ( [[segue identifier] isEqualToString:@"makeResSeg"]) {
        MakeReservationViewController *controller = (MakeReservationViewController*) [segue destinationViewController];
        
    }
}
- (IBAction)makeAppoint:(id)sender {
}

- (void) mysetRAID:(NSString*)REID {
    self.REID = REID;
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
