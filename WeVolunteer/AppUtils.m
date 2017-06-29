//
//  AppUtils.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/29/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "AppUtils.h"

@implementation AppUtils

#pragma mark - Custom components

//Title View
+(UILabel *) createTitleLabelWithString:(NSString *)title {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:17];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.text = NSLocalizedString(title, @"");
    [label sizeToFit];
    
    return label;
}

//Table Header
+(UIView *)createTableViewHeaderWithTitle:(NSString *)title andView:(UIView *)view {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, 24)];
    headerView.backgroundColor = COLOR_ORIOLES_ORANGE;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, (headerView.frame.size.height-8/2), (view.frame.size.width - 32), 8)];
    label.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:9];
    label.textColor = [UIColor whiteColor];
    label.text = title;
    [label sizeToFit];
    [headerView addSubview:label];
    
    return headerView;
}

//Text Field Left Image
+(void)setTextFieldLeftImageWithImage:(UIImage *)image andTextField:(UITextField *)textField andPadding:(CGFloat)leftPadding {
    [textField setLeftViewMode:UITextFieldViewModeAlways];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(leftPadding, 0, 20, 20)];
    imageView.image = image;
    [imageView.layer setMasksToBounds:YES];
    
    double width = leftPadding + 20;
    
    if (textField.borderStyle == UITextBorderStyleLine || textField.borderStyle == UITextBorderStyleNone) {
        width += 5;
    }
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 20)];
    [view addSubview:imageView];
    
    textField.leftView = view;
}

//Profile Image Circle Shape with a border
+(UIImageView *)setCircleImageViewProfile:(UIImageView *)image {
    
    //Creates a circle shape to profile image
    image.layer.cornerRadius = image.frame.size.width / 2;
    image.clipsToBounds = YES;
    
    //Creates a border around the profile image
    image.layer.borderWidth = 3.0f;
    image.layer.borderColor = [UIColor whiteColor].CGColor;
    
    return image;
}

#pragma mark - LoadingView

//Adds white view and an activity indicator
+(void)startLoadingInView:(UIView *)view {
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
    [whiteView setBackgroundColor:COLOR_WHITE];
    whiteView.tag = 11;
    
    UIView *loading = [[UIView alloc] initWithFrame:CGRectMake((view.center.x -65), (view.center.y -65 - 49), 130, 130)];
    [loading setBackgroundColor:[UIColor clearColor]];
    loading.layer.cornerRadius = 10.0f;
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [indicator setColor:COLOR_ORIOLES_ORANGE];
    [indicator setFrame:CGRectMake((loading.frame.size.width/2 - 7.5), (loading.frame.size.height/2 - 7.5), 15, 15)];
    
    [loading addSubview:indicator];
    
    [indicator startAnimating];
    [whiteView addSubview:loading];
    [view addSubview:whiteView];
    [view setUserInteractionEnabled:NO];
}

//Removes white view and an activity indicator
+(void)stopLoadingInView:(UIView *)view {
    [[view.subviews lastObject] removeFromSuperview];
    [view setUserInteractionEnabled:YES];
}

@end
