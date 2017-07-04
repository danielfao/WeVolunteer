//
//  AppUtils.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 6/29/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Constants.h"

@interface AppUtils : NSObject

+(void) saveToUserDefault:(NSObject*)objectToSave withKey:(NSString*)key;
+(NSObject*) retrieveFromUserDefaultWithKey:(NSString*)key;
+(void) clearUserDefault;

+(UILabel *) createTitleLabelWithString:(NSString *)title;
+(UIView *) createTableViewHeaderWithTitle:(NSString *)title andView:(UIView *)view;
+(void)setTextFieldLeftImageWithImage:(UIImage *)image andTextField:(UITextField *)textField andPadding:(CGFloat)leftPadding;
+(UIImageView *)setCircleImageViewProfile:(UIImageView *)image;

+(void)startLoadingInView:(UIView *)view;
+(void)stopLoadingInView:(UIView *)view;
@end
