//
//  RootViewController.m
//  testForGame
//
//  Created by iCocoder on 14-9-3.
//  Copyright (c) 2014年 24so. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title =@"Test for My Crazy Game!";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor purpleColor]];
    btn.frame =CGRectMake(0, 0, 200, 55);
    btn.center =self.view.center;
    [btn setTitle:@"Go!" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(goPlayGame:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.navigationController.navigationBar.tintColor =[UIColor redColor];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)goPlayGame :(UIButton *)sender
{
    MyGameViewController *gameVC =[[MyGameViewController alloc] init];
    [self.navigationController pushViewController:gameVC animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
