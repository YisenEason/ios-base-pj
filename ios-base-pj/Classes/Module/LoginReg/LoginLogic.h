//
//  LoginLogic.h
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import "BaseLogic.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginLogic : BaseLogic

@property (nonatomic, strong) NSString *username;

@property (nonatomic, copy) NSString *password;

- (void)login:(Block) block;

@end

NS_ASSUME_NONNULL_END
