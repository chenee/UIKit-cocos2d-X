//
//  testHybridAppController.h
//  testHybrid
//
//  Created by chenee on 13-11-7.
//  Copyright __MyCompanyName__ 2013年. All rights reserved.
//
#import "TestViewController.h"
@class RootViewController;

@interface AppController : NSObject <UIAccelerometerDelegate, UIAlertViewDelegate, UITextFieldDelegate,UIApplicationDelegate> {
    UIWindow *window;
    RootViewController    *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) RootViewController *viewController;
@property (nonatomic, retain) TestViewController *tvc;
@end

