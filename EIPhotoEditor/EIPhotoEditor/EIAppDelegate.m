//
//  EIAppDelegate.m
//  EIPhotoEditor
//
//  Created by Anwu Yang on 14-3-26.
//  Copyright (c) 2014年 Everimaging. All rights reserved.
//

#import "EIMainViewController.h"
#import "EIAppDelegate.h"

#if ! __has_feature(objc_arc)
#error this file is ARC only. Either turn on ARC for the project or use -fobjc-arc flag
#endif

@interface EIAppDelegate()

@property (strong, nonatomic) UINavigationController *rootNavigationController;
@property (strong, nonatomic) EIMainViewController *mainViewController;

@end

@implementation EIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    _mainViewController = [[EIMainViewController alloc] init];
    _rootNavigationController = [[UINavigationController alloc] initWithRootViewController:_mainViewController];
    _rootNavigationController.navigationBar.translucent = YES;
    _rootNavigationController.navigationBar.backgroundColor = [UIColor colorWithRed:65.f/255.f green:72.f/255.f blue:80.f/255.f alpha:0.9];
    [_rootNavigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    NSDictionary *titileDic = nil;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        titileDic = @{NSForegroundColorAttributeName:[UIColor whiteColor],
                      NSFontAttributeName:[UIFont fontWithName:@"Helvetica-Light" size:20]};
    }
    else {
        titileDic = @{UITextAttributeTextColor:[UIColor whiteColor],
                      UITextAttributeFont:[UIFont fontWithName:@"Helvetica-Light" size:20],
                      UITextAttributeTextShadowColor:[UIColor clearColor],
                      UITextAttributeTextShadowOffset:[NSValue valueWithCGSize:CGSizeZero]};
    }
    _rootNavigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                                    NSFontAttributeName: [UIFont fontWithName:@"Helvetica-Light" size:20]
                                                                    };
    self.window.rootViewController = _rootNavigationController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
