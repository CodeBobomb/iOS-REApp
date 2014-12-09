//
//  MorePhotosViewController.m
//  REApp
//
//  Created by academy387 on 12/9/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "MorePhotosViewController.h"

@interface MorePhotosViewController ()

@end

@implementation MorePhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.testLabel.text = self.raID;
    /*    NSArray *cellImageViews;
      for(int imageCounter = 1; ra.pics.count ;imageCounter++)
     {
     [[cellImageViews objectAtIndex:imageCounter-1] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"testImg%d", imageCounter]]];
     }*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setRaID:(NSString *)raID {
    
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
