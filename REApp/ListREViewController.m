//
//  ListREViewController.m
//  REApp
//
//  Created by Academy387 on 12/10/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ListREViewController.h"
#import "REA.h"
#import "RealEstate.h"


@interface ListREViewController ()

@end

@implementation ListREViewController

REA* rea;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    rea=[REA initREA];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    rea=[REA initREA];
    return [rea numberOfRe];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
