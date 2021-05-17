//
//  UIWindow+CurrentViewController.h
//  ios-base-pj
//
//  Created by easonyi on 14/5/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWindow (CurrentViewController)

/*!
 @method currentViewController
 
 @return Returns the topViewController in stack of topMostController.
 */
+ (UIViewController*)ys_currentViewController;

@end

NS_ASSUME_NONNULL_END
