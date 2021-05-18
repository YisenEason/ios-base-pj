//
//  CSCell.h
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CSCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) MyRelativeLayout *layout;

@property (nonatomic, strong) UILabel *lb;

@end

NS_ASSUME_NONNULL_END
