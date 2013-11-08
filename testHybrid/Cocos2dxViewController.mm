//
//  Cocos2dxViewController.m
//  testHybrid
//
//  Created by chenee on 13-11-8.
//
//

#import "Cocos2dxViewController.h"
#import "EAGLView.h"
#import "cocos2d.h"
#import "HelloWorldScene.h"
#import "Scene1.h"


@interface Cocos2dxViewController ()
@property (retain, nonatomic) IBOutlet UIView *cocos2dxView;

@end

@implementation Cocos2dxViewController
- (IBAction)backItemClick:(id)sender {
    cocos2d::CCDirector::sharedDirector()->end();

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Scene1Clicked:(id)sender {
    // create a scene. it's an autorelease object
    cocos2d::CCScene *pScene = HelloWorld::scene();
    
    cocos2d::CCDirector *pDirector = cocos2d::CCDirector::sharedDirector();
    pDirector->runWithScene(pScene);
}
- (IBAction)Scene2Clicked:(id)sender {
    cocos2d::CCScene *pScene = Scene1::scene();
    
    cocos2d::CCDirector *pDirector = cocos2d::CCDirector::sharedDirector();
    pDirector->replaceScene(pScene);
}
- (IBAction)addLabel:(id)sender {
    cocos2d::CCLabelTTF* pLabel = cocos2d::CCLabelTTF::create("Chenee is pig", "Thonburi", 48);
    pLabel->setPosition( ccp(300,400) );
    
    
    cocos2d::CCDirector *pDirector = cocos2d::CCDirector::sharedDirector();
    cocos2d::CCScene *ps = pDirector->getRunningScene();
    cocos2d::CCLayer *pl = (cocos2d::CCLayer*)ps->getChildByTag(0);//you should set tag=0 before
    pl->addChild(pLabel);
    
    
    //-----
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 50, 100, 50)];
    [btn setTitle:@"I'm button-1" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor grayColor]];
    
    [[EAGLView sharedEGLView]addSubview:btn];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Add the view controller's view to the window and display.
    EAGLView *__glView = [EAGLView viewWithFrame: [_cocos2dxView bounds]
                                     pixelFormat: kEAGLColorFormatRGBA8
                                     depthFormat: GL_DEPTH_COMPONENT16
                              preserveBackbuffer: NO
                                      sharegroup: nil
                                   multiSampling: NO
                                 numberOfSamples:0 ];
    
    [_cocos2dxView addSubview:__glView];
    
    cocos2d::CCApplication::sharedApplication()->run();
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_cocos2dxView release];
    [super dealloc];
}
@end
