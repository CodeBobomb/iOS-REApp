//
//  MorePhotosViewController.m
//  REApp
//
//  Created by academy387 on 12/9/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "MorePhotosViewController.h"
#import "REA.h"

@interface MorePhotosViewController ()

@end

@implementation MorePhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    REA *r = [REA initREA];
 //   RealEstate *ra = [r findRealEstate:self.raID];
    NSArray *tempImgs = [[NSArray alloc ] initWithObjects: @"img1.png", @"img2.png", @"img3.png", nil];
    self.bigPicture.image = [UIImage imageNamed:[tempImgs objectAtIndex:0]];
    self.currentImgIndeks = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextBtnClick:(id)sender {
    
    NSArray *tempImgs = [[NSArray alloc ] initWithObjects: @"img1.png", @"img2.png", @"img3.jpg", nil];
    NSInteger nextIndex = (self.currentImgIndeks + 1) % tempImgs.count;
    self.pb.image = [UIImage imageNamed:[tempImgs objectAtIndex:nextIndex] ];
    self.currentImgIndeks = nextIndex;
}
- (IBAction)prevBtnClick:(id)sender {
    //tempImgs = ra.pics
    NSArray *tempImgs = [[NSArray alloc ] initWithObjects: @"img1.png", @"img2.png", @"img3.jpg", nil];
    NSInteger nextIndex = (self.currentImgIndeks - 1) % tempImgs.count;
    if (self.currentImgIndeks == 1) {
        nextIndex = 0;
    }
    if (self.currentImgIndeks == 0) {
        nextIndex = tempImgs.count -1;
    }
    self.pb.image = [UIImage imageNamed:[tempImgs objectAtIndex:nextIndex] ];
    self.currentImgIndeks = nextIndex;
}

- (void) mysetRAID:(NSString *)temp {
    self.raID = temp;
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
