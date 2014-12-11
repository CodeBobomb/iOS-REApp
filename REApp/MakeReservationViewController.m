//
//  MakeReservationViewController.m
//  REApp
//
//  Created by Academy387 on 12/11/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "MakeReservationViewController.h"

@interface MakeReservationViewController ()

@end

@implementation MakeReservationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) mySetReID:(NSString*) rID {
    self.reID = rID;
}

- (IBAction)nextBtnClick:(id)sender {
    
    switch ([self.datePicker.date  compare:[NSDate date]]) {
        case NSOrderedAscending:
            //Do your logic when date1 > date2 // NOK
            NSLog(@"bla");
            break;
            
        case NSOrderedDescending:
            //Do your logic when date1 < date2 // OK
            
            break;
            
        case NSOrderedSame:
            //Do your logic when date1 = date2 //OK
            
            
            break;
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
