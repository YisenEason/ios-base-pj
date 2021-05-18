//
//  LoginVC.m
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#import "LoginVC.h"
#import "LoginLogic.h"
#import "MyVC.h"

@interface LoginVC ()

@property (nonatomic, strong) LoginLogic *logic;

@property (nonatomic, strong) UILabel *usernameLb;

@property (nonatomic, strong) UILabel *passwordLb;

@property (nonatomic, strong) UIButton *loginBtn;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.logic = [LoginLogic new];
    [self kvo];
    
    [self createUI];
}

- (void)createUI {
    MyRelativeLayout *frameLayout = [[MyRelativeLayout alloc] init];
    frameLayout.myWidth = MyLayoutSize.fill;
    frameLayout.myHeight = MyLayoutSize.wrap;
    frameLayout.myTop = MyLayoutPos.safeAreaMargin;
    frameLayout.myLeft = 0;
    
    self.usernameLb = [UILabel new];
    self.usernameLb.text = @"";
    self.usernameLb.mySize = CGSizeMake(MyLayoutSize.wrap, MyLayoutSize.wrap);
    self.usernameLb.myTop = 0;
    self.usernameLb.myLeft = 0;
    [frameLayout addSubview:self.usernameLb];
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.loginBtn setTitle:@"btn" forState:UIControlStateNormal];
    self.loginBtn.mySize = CGSizeMake(MyLayoutSize.wrap, MyLayoutSize.wrap);
    self.loginBtn.topPos.equalTo(self.usernameLb.bottomPos).offset(0);
    self.loginBtn.myLeft = 0;
    [self.loginBtn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [frameLayout addSubview:self.loginBtn];
    
    [self.view addSubview:frameLayout];
    
}

- (void)kvo {
    
    self.KVOController = [FBKVOController controllerWithObserver:self];
    [self.KVOController observe:self.logic keyPaths:@[@"username", @"password", @"model"] options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        if ([change[@"FBKVONotificationKeyPathKey"] isEqualToString: @"username"]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.usernameLb.text = self.logic.username;
            });
        }else if ([change[@"FBKVONotificationKeyPathKey"] isEqualToString: @"password"]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.passwordLb.text = self.logic.password;
            });
        }
    }];
}

- (void)login:(id)sender {
    [MBProgressHUD showLoadToView:self.view];
    WeakSelf(self)
    [self.logic login:^{
        NSLog(@"login");
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:weakself.view];
            [self.navigationController pushViewController:[MyVC new] animated:YES];
        });
    }];
}

@end
