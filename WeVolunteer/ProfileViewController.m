//
//  ProfileViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/27/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "ProfileViewController.h"
#import "AppUtils.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set the profile image circle shape
    [AppUtils setCircleImageViewProfile:self.profileImage];
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
