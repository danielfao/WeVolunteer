//
//  ReusableTableCell.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 7/12/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const reusableCellIdentifier = @"reusableCell";

@interface ReusableTableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *cellDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellTimeLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellAuthorLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellContactLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellTypeLabel;

@end
