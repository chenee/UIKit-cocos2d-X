//
//  TestViewController.m
//  testHybrid
//
//  Created by chenee on 13-11-8.
//
//

#import "TestViewController.h"
#import "Cocos2dxViewController.h"

@interface TestViewController ()
@property (retain, nonatomic) IBOutlet UILabel *myLable;

@end

@implementation TestViewController
- (IBAction)createCocos2dxWindow:(id)sender {
    Cocos2dxViewController *controller=[[[Cocos2dxViewController alloc] initWithNibName:@"Cocos2dxViewController" bundle:nil] autorelease];
    
    [self presentViewController:controller animated:YES completion:nil];
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_myLable release];
    [super dealloc];
}
@end
