//
//  LoginViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)didTapSignInButton:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didTapForgotPasswordButton:(id)sender {
}

- (IBAction)didTapRegisterButton:(id)sender {
}

- (IBAction)didTapGoogleButton:(id)sender {
}

- (IBAction)didTapFacebookButton:(id)sender {
}

//Method called when clicking anywhere in the view
- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
}
@end
