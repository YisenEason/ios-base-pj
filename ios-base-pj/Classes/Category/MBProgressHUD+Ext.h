//
//  MBProgressHUD+Ext.h
//  ios-base-pj
//
//  Created by easonyi on 14/5/2021.
//

#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (Ext)

/**
 *  自定义图片的提示，3s后自动消息
 *
 *  @param title 要显示的文字
 *  @param iconName 图片地址(建议不要太大的图片)
 *  @param view 要添加的view
 */
+ (void)showCustomIcon:(NSString *)iconName Title:(NSString *)title ToView:(UIView *)view;


/**
 *  文字+菊花提示,不自动消失
 *
 *  @param message 要显示的文字
 *  @param view    要添加的View
 *
 *  @return MBProgressHUD
 */
+ (MBProgressHUD *)showMessage:(NSString *)message ToView:(UIView *)view;


/**
 *  快速显示一条提示信息
 *
 *  @param message 要显示的文字
 */
+ (void)showAutoMessage:(NSString *)message;


/**
 *  自动消失提示，无图
 *
 *  @param message 要显示的文字
 *  @param view    要添加的View
 */
+ (void)showAutoMessage:(NSString *)message ToView:(UIView * _Nullable)view;


/**
 *  自定义停留时间，有图
 *
 *  @param message 要显示的文字
 *  @param view    要添加的View
 *  @param time    停留时间
 */
+(void)showIconMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time;


/**
 *  自定义停留时间，无图
 *
 *  @param message 要显示的文字
 *  @param view 要添加的View
 *  @param time 停留时间
 */
+(void)showMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time;


/**
 *  加载视图
 *
 *  @param view 要添加的View
 */
+ (void)showLoadToView:(UIView *)view;



/**
 *  进度条View
 *
 *  @param view     要添加的View
 *  @param text     显示的文字
 *
 *  @return 返回使用
 */
+ (MBProgressHUD *)showProgressToView:(UIView *)view Text:(NSString *)text;


/**
 *  隐藏ProgressView
 *
 *  @param view superView
 
 */
+ (void)hideHUDForView:(UIView * _Nullable)view;


/**
 *  快速从window中隐藏ProgressView
 */
+ (void)hideHUD;

@end

NS_ASSUME_NONNULL_END
