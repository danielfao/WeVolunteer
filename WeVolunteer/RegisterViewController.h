//
//  RegisterViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/29/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@property (strong, nonatomic) IBOutlet UIButton *didTapCreateAccountButton;

@end
