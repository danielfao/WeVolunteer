//
//  HomeViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/14/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

@import Firebase;
@import GoogleSignIn;
#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <GIDSignInDelegate, GIDSignInUIDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (strong, nonatomic) IBOutlet UIView *tableViewContainer;
@property (strong, nonatomic) IBOutlet UIView *mapViewContainer;

- (IBAction)segmentControl:(id)sender;
- (IBAction)didTapSignOutButton:(id)sender;

@end
