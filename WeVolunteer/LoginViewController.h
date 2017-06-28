//
//  LoginViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)didTapSignInButton:(id)sender;
- (IBAction)didTapForgotPasswordButton:(id)sender;
- (IBAction)didTapRegisterButton:(id)sender;
- (IBAction)didTapGoogleButton:(id)sender;
- (IBAction)didTapFacebookButton:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end
