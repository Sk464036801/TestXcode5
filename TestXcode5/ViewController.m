//
//  ViewController.m
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import "ViewController.h"

#import "GeneralViewController.h"
#import "TheTableViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)generalBtnPressed:(id)sender
{
    GeneralViewController *nextVC = [[GeneralViewController alloc] initWithNibName:@"GeneralViewController" bundle:nil];
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
