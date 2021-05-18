//
//  CSCell.m
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import "CSCell.h"

@implementation CSCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    NSString *cellID = NSStringFromClass([self class]);
    CSCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[CSCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initWithView];
    }
    return self;
}

- (void)initWithView {
    
    self.layout = [MyRelativeLayout new];
    self.layout.mySize = CGSizeMake(MyLayoutSize.wrap, MyLayoutSize.wrap);
    self.layout.padding = UIEdgeInsetsMake(10, 0, 10, 0);
    [self.contentView addSubview:self.layout];

    self.lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    self.lb.mySize = CGSizeMake(MyLayoutSize.wrap, MyLayoutSize.wrap);
    self.lb.myTop = 0;
    self.lb.myLeft = 0;

    [self.layout addSubview:self.lb];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority {
    return  [self.layout sizeThatFits:targetSize];
}



@end
