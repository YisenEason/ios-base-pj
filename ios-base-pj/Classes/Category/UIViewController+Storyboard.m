//
//  UIViewController+Storyboard.m
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import "UIViewController+Storyboard.h"

@implementation UIViewController (Storyboard)

+ (UIViewController *)vcWithSB:(NSString *)storyboardName {
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:[NSBundle mainBundle]];
    UIViewController* vc = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
    return vc;
}

@end
