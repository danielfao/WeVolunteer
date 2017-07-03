//
//  LoginViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

@import Firebase;
@import GoogleSignIn;
#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <GIDSignInDelegate, GIDSignInUIDelegate>

@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet GIDSignInButton *signInButton;

- (IBAction)didTapSignInButton:(id)sender;
- (IBAction)didTapForgotPasswordButton:(id)sender;
- (IBAction)didTapRegisterButton:(id)sender;
- (IBAction)didTapFacebookButton:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end
