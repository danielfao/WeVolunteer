//
//  OfferDetailViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 7/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "OfferDetailViewController.h"

@interface OfferDetailViewController ()

@end

@implementation OfferDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailTitleLabel.text = self.detailModal[0];
    self.detailAuthorLabel.text = self.detailModal[1];
    self.detailTimeLabel.text = self.detailModal[2];
    self.detailDateLabel.text = self.detailModal[3];
    self.detailContactLabel.text = self.detailModal[4];
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

- (IBAction)didTapShowInterest:(id)sender {
}
@end
