//
//  ViewController.m
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import "ViewController.h"

#import "VCInNC_ViewController.h"
#import "TheTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *testMarcro = [[UIView alloc] initWithFrame:CGRM_(0, 20, 40, 40)];
    testMarcro.backgroundColor = [UIColor blackColor];
    
    UIView *tms = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    tms.backgroundColor = [UIColor yellowColor];
    [testMarcro addSubview:tms];

    [self.view addSubview:testMarcro];
    
    
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(40, 20, 40, 40)];
    testView.backgroundColor = [UIColor blueColor];
    
    UIView *tvs = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    tvs.backgroundColor = [UIColor greenColor];
    [testView addSubview:tvs];
    
    [self.view addSubview:testView];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)generalBtnPressed:(id)sender
{
    VCInNC_ViewController *nextVC = [[VCInNC_ViewController alloc] initWithNibName:@"GeneralViewController" bundle:nil];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:nextVC];
    navVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:navVC animated:YES completion:nil];
}

- (IBAction)tabVBtnPressed:(id)sender
{
    TheTableViewController *nextVC = [[TheTableViewController alloc] init];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:nextVC];
    navVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:navVC animated:YES completion:nil];
}


@end
