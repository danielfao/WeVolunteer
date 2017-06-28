//
//  InitialSetUpViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/28/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "InitialSetUpViewController.h"
#import "TabBarViewController.h"
#import "LoginViewController.h"

@interface InitialSetUpViewController ()

@end

@implementation InitialSetUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Navigation Bar
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //Check if the user is logged or not
    BOOL isLogged = NO;
    
    if (isLogged == NO) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
        LoginViewController *vc = [sb instantiateInitialViewController];
        [self.navigationController presentViewController:vc animated:YES completion:nil];
        isLogged = YES;
    } else {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        TabBarViewController *vc = [sb instantiateInitialViewController];
        [self.navigationController presentViewController:vc animated:NO completion:nil];
        
    }
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
