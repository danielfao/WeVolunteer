//
//  HomeViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/14/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"
#import "AppUtils.h"

@interface HomeViewController ()

@end

@implementation HomeViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.navigationItem.hidesBackButton = YES;

    
    //Right Navigation Buttons - Add Button
    UIButton *moreButton = [self setImageNavbarButtons:@"ic_more"];
    [moreButton addTarget:self action:@selector(conf) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *moreButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moreButton];
    
    UIButton *messageButton = [self setImageNavbarButtons:@"ic_message"];
    [messageButton addTarget:self action:@selector(messages) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *messageButtonItem = [[UIBarButtonItem alloc] initWithCustomView:messageButton];
    
    UIButton *alertButton = [self setImageNavbarButtons:@"ic_alert"];
    [alertButton addTarget:self action:@selector(alert) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *alertButtonItem = [[UIBarButtonItem alloc] initWithCustomView:alertButton];
    
    UIButton *searchButton = [self setImageNavbarButtons:@"ic_search"];
    [searchButton addTarget:self action:@selector(search) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *searchButtonItem = [[UIBarButtonItem alloc] initWithCustomView:searchButton];
    
    self.navigationItem.rightBarButtonItems = @[moreButtonItem, messageButtonItem, alertButtonItem, searchButtonItem];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
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


//Set Navigation Button Image
- (UIButton*)setImageNavbarButtons: (NSString *) imageName {
    UIImage* image = [UIImage imageNamed: imageName];
    CGRect frameImg = CGRectMake(0, 0, 40, 40);
    UIButton *button = [[UIButton alloc] initWithFrame:frameImg];
    
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setShowsTouchWhenHighlighted:YES];

    return button;
}

#pragma mark - IBActions

- (IBAction)segmentControl:(id)sender {
    if (self.segmentControl.selectedSegmentIndex == 0) {
        [self.mapViewContainer setHidden:NO];
        [self.tableViewContainer setHidden:YES];
        
    }
    if (self.segmentControl.selectedSegmentIndex == 1) {
        [self.mapViewContainer setHidden:YES];
        [self.tableViewContainer setHidden:NO];
    }
}

//Sign out button
- (void)didTapSignOutButton:(id)sender {
    [AppUtils clearUserDefault];
    FIRAuth *firebaseAuth = [FIRAuth auth];
    NSError *signOutError;
    BOOL status = [firebaseAuth signOut:&signOutError];
    if (!status) {
        NSLog(@"Error signing out: %@", signOutError);
        return;
    }

    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
