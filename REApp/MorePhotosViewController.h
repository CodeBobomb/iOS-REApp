//
//  MorePhotosViewController.h
//  REApp
//
//  Created by academy387 on 12/9/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RealEstate.h"

@interface MorePhotosViewController : UIViewController

@property NSString *raID;
@property (weak, nonatomic) IBOutlet UIImageView *bigPicture;
@property (weak, nonatomic) IBOutlet UIButton *nextPicBtn;
@property (weak, nonatomic) IBOutlet UIButton *prevPicBtn;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

- (void) setRaID:(NSString *)raID;

@end
