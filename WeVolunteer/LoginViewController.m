//
//  LoginViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"
#import "RegisterViewController.h"
#import "AppUtils.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NavigationBar hidden so the background color takes all the screen
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.hidden = YES;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //Puts an image on the left side of the text field
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_lock_white"] andTextField:self.passwordTextField andPadding:5.0];
    [AppUtils setTextFieldLeftImageWithImage:[UIImage imageNamed:@"ic_email_white"] andTextField:self.emailTextField andPadding:5.0];
    
    //Sign in Google Authentication
    [GIDSignIn sharedInstance].clientID = [FIRApp defaultApp].options.clientID;
    [GIDSignIn sharedInstance].delegate = self;
    [GIDSignIn sharedInstance].uiDelegate = self;
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
    [AppUtils startLoadingInView:self.view];
    [AppUtils stopLoadingInView:self.view];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didTapForgotPasswordButton:(id)sender {
}

- (IBAction)didTapRegisterButton:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Register" bundle:nil];
    RegisterViewController *vc = [sb instantiateViewControllerWithIdentifier:@"RegisterViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)didTapGoogleSignInButton:(id)sender {
    [[GIDSignIn sharedInstance] signIn];
}


- (IBAction)didTapFacebookButton:(id)sender {
}

//Method called when clicking anywhere in the view
- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
}

#pragma mark - Google SignIn Delegate

- (void)signInWillDispatch:(GIDSignIn *)signIn error:(NSError *)error {
    
}

// Present a view that prompts the user to sign in with Google
- (void)signIn:(GIDSignIn *)signIn presentViewController:(UIViewController *)viewController
{
    [self presentViewController:viewController animated:YES completion:nil];
}

// Dismiss the "Sign in with Google" view
- (void)signIn:(GIDSignIn *)signIn dismissViewController:(UIViewController *)viewController {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)signIn:(GIDSignIn *) signIn didSignInForUser:(GIDGoogleUser *)user withError:(NSError *)error {
    if(error == nil) {
        GIDAuthentication *authentication = user.authentication;
        FIRAuthCredential *credential = [FIRGoogleAuthProvider
                                         credentialWithIDToken:authentication.idToken
                                         accessToken:authentication.accessToken];
        
        [[FIRAuth auth] signInWithCredential:credential completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            if(user){
                NSString *welcomeMessage = [NSString stringWithFormat: @"Welcome to We Volunteer, %@", user.displayName];
                NSString *alertTitle = @"We Volunteer";
                UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle message:welcomeMessage preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK action") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
                    NSLog(@"OK action");
                }];
                [alertController addAction:okAction];
                [self presentViewController:alertController animated:YES completion:nil];
            }
        }];
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Home" bundle:nil];
        HomeViewController *vc = [sb instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        NSLog(@"%@", error.localizedDescription);
    }
}

@end
