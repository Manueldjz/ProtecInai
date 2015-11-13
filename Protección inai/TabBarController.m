//
//  TabBarController.m
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "TabBarController.h"
#import "ABCIntroView.h"

@interface TabBarController () <ABCIntroViewDelegate>
@property ABCIntroView *introView;

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *theDefaults;
    int  launchCount;
    //Set up the properties for the integer and default.
    theDefaults = [NSUserDefaults standardUserDefaults];
    launchCount = (int)[theDefaults integerForKey:@"hasRun"] +  1;
    [theDefaults setInteger:launchCount forKey:@"hasRun"];
    [theDefaults synchronize];
    
    [self colorTabBar];
    
    NSLog(@"This application has been run %d amount of times", launchCount);
    
    //Test if application is the first time running
    if(launchCount == 1) {
        //Run your first launch code (Bring user to info/setup screen, etc.)
        NSLog(@"This is the first time this application has been run");
        
        
        
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if (![defaults objectForKey:@"intro_screen_viewed"]) {
            self.introView = [[ABCIntroView alloc] initWithFrame:self.view.frame];
            self.introView.delegate = self;
            self.introView.backgroundColor = [UIColor blueColor];
            [self.view addSubview:self.introView];
            
            
            
            
            
            
        }
    }
    
    //Test if it has been run before
    if(launchCount >= 2) {
        
        //Run new code if they have opened the app before (Bring user to home screen etc.
        NSLog(@"This application has been run before");
        
    }
    
}


-(void)onDoneButtonPressed{
    
    //    Uncomment so that the IntroView does not show after the user clicks "DONE"
    //    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //    [defaults setObject:@"YES"forKey:@"intro_screen_viewed"];
    //    [defaults synchronize];
    
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.introView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.introView removeFromSuperview];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)colorTabBar
{
    UIColor *myColor=[UIColor colorWithRed:56/255.0 green:127/255.0 blue:194/255.0 alpha:1.0];
    
    // set color of selected icons and text to green
    self.tabBar.tintColor = myColor;
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: myColor, NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    
    // set color of unselected text to green
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]
                                             forState:UIControlStateNormal];
    
    // set selected and unselected icons
    UITabBarItem *item0 = [self.tabBar.items objectAtIndex:0];
    // this way, the icon gets rendered as it is (thus, it needs to be green in this example)
    item0.image = [[UIImage imageNamed:@"iconoTabMonitoreo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // this icon is used for selected tab and it will get tinted as defined in self.tabBar.tintColor
    item0.selectedImage = [UIImage imageNamed:@"iconoTabMonitoreo"];
    
    UITabBarItem *item1 = [self.tabBar.items objectAtIndex:1];
    // this way, the icon gets rendered as it is (thus, it needs to be green in this example)
    item1.image = [[UIImage imageNamed:@"iconoTabInicio"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // this icon is used for selected tab and it will get tinted as defined in self.tabBar.tintColor
    item1.selectedImage = [UIImage imageNamed:@"iconoTabInicio"];
    
    UITabBarItem *item2 = [self.tabBar.items objectAtIndex:2];
    // this way, the icon gets rendered as it is (thus, it needs to be green in this example)
    item2.image = [[UIImage imageNamed:@"iconoTabAjustes"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // this icon is used for selected tab and it will get tinted as defined in self.tabBar.tintColor
    item2.selectedImage = [UIImage imageNamed:@"iconoTabAjustes"];
    
}

@end
