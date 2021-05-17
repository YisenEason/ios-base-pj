//
//  AppDelegate.m
//  ios-base-pj
//
//  Created by easonyi on 14/5/2021.
//

#import "AppDelegate.h"
#import "LoginVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"LoginReg" bundle:[NSBundle mainBundle]];
    UINavigationController* vc = [storyboard instantiateInitialViewController];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
