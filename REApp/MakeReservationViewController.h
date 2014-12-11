//
//  MakeReservationViewController.h
//  REApp
//
//  Created by Academy387 on 12/11/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeReservationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property NSString* reID;
@property (weak, nonatomic) IBOutlet UIButton *ok;

@end
