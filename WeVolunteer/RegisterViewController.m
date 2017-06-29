//
//  RegisterViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/29/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "RegisterViewController.h"
#import "AppUtils.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.profileImageView = [AppUtils setCircleImageViewProfile:self.profileImageView];
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
