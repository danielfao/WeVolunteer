//
//  HomeViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/14/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)segmentControl:(id)sender;

@end
