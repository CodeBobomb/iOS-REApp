//
//  RealEstateViewController.m
//  REApp
//
//  Created by academy387 on 12/9/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "RealEstateViewController.h"
#import "MorePhotosViewController.h"
#import "REA.h"

@interface RealEstateViewController ()

@end

@implementation RealEstateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    
    REA *R = [REA initREA];
    //RealEstate *ra = [R findRealEstate:self.raID];
//    NSArray *cellImageViews;
  /*  for(int imageCounter = 1; ra.pics.count ;imageCounter++)
    {
        [[cellImageViews objectAtIndex:imageCounter-1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"testImg%d", imageCounter]]];
    }*/
    self.descPic.image = [UIImage imageNamed: @"img1.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)MorePhotosClicked:(id)sender {
    [self performSegueWithIdentifier:@"showMorePictures" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqual: @"showItems"]) {
        MorePhotosViewController *controller = (MorePhotosViewController*)[segue destinationViewController];
        //controller.raID = self.raID;
        controller.raID = @"Test";
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
