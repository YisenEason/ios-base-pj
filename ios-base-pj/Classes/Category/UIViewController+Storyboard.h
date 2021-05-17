//
//  UIViewController+Storyboard.h
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Storyboard)

+ (UIViewController *)vcWithSB:(NSString *)storyboardName;

@end

NS_ASSUME_NONNULL_END
