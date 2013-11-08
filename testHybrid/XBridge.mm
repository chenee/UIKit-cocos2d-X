//
//  XBridgeViewController.cpp
//  xbridge
//
//  Created by diwwu on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "XBridge.h"
#include "AppController.h"
#include "RootViewController.h"
#import "EAGLView.h"

using namespace cocos2d;

void XBridge::doSth() {
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 100, 30)];
    [btn setTitle:@"I'm button2" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor grayColor]];
    
//    UITableView *tab = [[UITableView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    [[EAGLView sharedEGLView]addSubview:btn];
}
