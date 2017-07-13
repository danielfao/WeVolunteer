//
//  OfferDetailViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 7/13/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OfferDetailViewController : UIViewController
@property(strong, nonatomic) NSArray *detailModal;

@property (strong, nonatomic) IBOutlet UILabel *detailTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailAuthorLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailTimeLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLocationLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailContactLabel;
@property (strong, nonatomic) IBOutlet UITextView *detailDescriptionTextField;

- (IBAction)didTapShowInterest:(id)sender;
@end
