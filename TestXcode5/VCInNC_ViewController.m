//
//  NextViewController.m
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import "VCInNC_ViewController.h"

@interface VCInNC_ViewController ()

@end

@implementation VCInNC_ViewController

- (void)leftBarButtonItemPressed:(UIBarButtonItem *)barButtonItem
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
    
    self.title = @"General VC";
    
    
    
    [self.navigationController.navigationBar setBackgroundImage:PNGIMAGE(@"nav_bar") forBarMetrics:UIBarMetricsDefault];
    
    //self.extendedLayoutIncludesOpaqueBars = YES;   // iOS 7 only
    //self.edgesForExtendedLayout = UIRectEdgeNone;  // iOS 7 only
    
    
    DLog(@"%f,%f,%f,%f",
         
         self.view.frame.origin.x,
         self.view.frame.origin.y,
         self.view.frame.size.width,
         self.view.frame.size.height
         
         );
    
    
    
    //-- leftItem ----------------------------------------------------------------------------------
    UIBarButtonItem *leftButtonItem =
    [[UIBarButtonItem alloc]initWithTitle:@"Done"
                                    style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(leftBarButtonItemPressed:)];
    
    leftButtonItem.tintColor =  RGBCOLOR(62, 132, 182);
    
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    //--------------------------------------------------------------------------------------------//
    
    
    
    //-- UILabel -----------------------------------------------------------------------------------
    self.testLabel = [[UILabel alloc] initWithFrame:CGRM_InNav(0, 64, 160, 50)];
    self.testLabel.font = [UIFont boldSystemFontOfSize:15.0];
    self.testLabel.backgroundColor = [UIColor yellowColor];
    self.testLabel.textColor = RGBCOLOR(80, 80, 80);
    self.testLabel.textAlignment = NSTextAlignmentCenter;
    
    
    [self.view addSubview:self.testLabel];
    
    self.testLabel.text = @"code";
    //--------------------------------------------------------------------------------------------//
    
    
    //-- UITextView -----------------------------------------------------------------------------------
    self.testTextView = [[UITextView alloc] initWithFrame:CGRM_InNav(10, 200, 300, 200)];
    self.testTextView.font = [UIFont boldSystemFontOfSize:16.0];
    self.testTextView.backgroundColor = [UIColor lightGrayColor];
    self.testTextView.textColor = RGBCOLOR(0, 0, 0);
    self.testTextView.textAlignment = NSTextAlignmentCenter;
    
    
    [self.view addSubview:self.testTextView];
    
    self.testTextView.text = @"黄色的UILabel是通过兼容代码生成，蓝色的UILabel是nib中拖拽的控件，即 CGRectMake(x, y, w, h) 在不同版本坐标不兼容 ， 虽然可 加上 self.edgesForExtendedLayout = UIRectEdgeNone;  但感觉很不优雅。。也失去了iOS7的一个很好的效果 ";
    //--------------------------------------------------------------------------------------------//
    

    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
