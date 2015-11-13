//
//  AppDelegate.m
//  Protección inai
//
//  Created by Monster on 21/10/15.
//  Copyright (c) 2015 stick. All rights reserved.
//

#import "AppDelegate.h"
#import "LTHPasscodeViewController.h"

#define TabBarInicio UITabBarController *tabBar = (UITabBarController *)self.window.rootViewController;[tabBar setSelectedIndex:1];

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [LTHPasscodeViewController useKeychain:NO];
    if ([LTHPasscodeViewController doesPasscodeExist]) {
        if ([LTHPasscodeViewController didPasscodeTimerEnd])
            [[LTHPasscodeViewController sharedUser] showLockScreenWithAnimation:YES
                                                                     withLogout:NO
                                                                 andLogoutTitle:nil];
    }
    
    
    //Color boton de
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //Tipografia Caracteristicas
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor whiteColor], NSForegroundColorAttributeName,
                                                           
                                                           [UIFont fontWithName:@"HelveticaNeue" size:19.0], NSFontAttributeName, nil]];
    

    
    CGSize iOSScreenSize = [[UIScreen mainScreen]bounds].size;
    
    if (iOSScreenSize.height == 480) {
        UIStoryboard *iPhone35Storyboard = [UIStoryboard storyboardWithName:@"iPhone35" bundle:nil];
        UIViewController *initialViewController = [iPhone35Storyboard instantiateInitialViewController];
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
        self.window.rootViewController = initialViewController;
        [self.window makeKeyAndVisible];
        
        
        TabBarInicio
    }
    if (iOSScreenSize.height == 568) {
        
        UIStoryboard *iPhone4Storyboard = [UIStoryboard storyboardWithName:@"iPhone4" bundle:nil];
        UIViewController *initialViewController = [iPhone4Storyboard instantiateInitialViewController];
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
        self.window.rootViewController = initialViewController;
        [self.window makeKeyAndVisible];
                
        //Inicio TabBar
        TabBarInicio
        
    }
    if (iOSScreenSize.height == 667) {
        
        UIStoryboard *iPhone47Storyboard = [UIStoryboard storyboardWithName:@"iPhone47" bundle:nil];
        UIViewController *initialViewController = [iPhone47Storyboard instantiateInitialViewController];
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
        self.window.rootViewController = initialViewController;
        [self.window makeKeyAndVisible];
        
        //Inicio TabBar
        TabBarInicio
        
    }
    if (iOSScreenSize.height == 736) {
        UIStoryboard *iPhone55Storyboard = [UIStoryboard storyboardWithName:@"iPhone55" bundle:nil];
        UIViewController *initialViewController = [iPhone55Storyboard instantiateInitialViewController];
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ];
        self.window.rootViewController = initialViewController;
        [self.window makeKeyAndVisible];
        
        //Inicio TabBar
        TabBarInicio
        
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    }

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
