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
    
    //Set the profile image circle shape
    [AppUtils setCircleImageViewProfile:self.profileImageView];
    
    //Puts an image on the left side of the text field
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_lock"] andTextField:self.passwordTextField andPadding:5.0];
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_email"] andTextField:self.emailTextField andPadding:5.0];
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_iphone"] andTextField:self.phoneNumberTextField andPadding:5.0];
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_user"] andTextField:self.nameTextField andPadding:5.0];
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

#pragma mark - IBActions

- (IBAction)didTapCreateAccountButton:(id)sender {

}

//Method called when clicking anywhere in the view
- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
}

@end
