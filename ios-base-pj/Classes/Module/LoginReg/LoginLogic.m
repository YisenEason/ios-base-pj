//
//  LoginLogic.m
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import "LoginLogic.h"

@implementation LoginLogic

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)login:(Block) block {
    // 创建延迟时间，从当前时间开始，3秒后执行。 3秒需要转化为纳秒,因为该函数是以纳秒为基础进行的
    dispatch_time_t delay = dispatch_time(DISPATCH_TIME_NOW, 0.3*NSEC_PER_SEC);
    // 执行延迟函数
    // 模拟登陆
    dispatch_after(delay, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        self.username = @"username";
        self.password = @"password";
        if (block) {
            block();
        }
    });
}

@end
