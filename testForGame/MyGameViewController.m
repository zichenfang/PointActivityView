//
//  MyGameViewController.m
//  testForGame
//
//  Created by iCocoder on 14-9-3.
//  Copyright (c) 2014年 24so. All rights reserved.
//

#import "MyGameViewController.h"
#import "PointActivityView.h"
@interface MyGameViewController ()<UIWebViewDelegate>
@property(nonatomic,strong)UIWebView *gameWeb;
@property(nonatomic,strong)UIActivityIndicatorView *myActView;
@property(nonatomic,strong)PointActivityView *myPActView;

@end

@implementation MyGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.automaticallyAdjustsScrollViewInsets =NO;
        self.title =@"Crazy Game ";
        self.myActView =[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 33, 33)];
        self.myActView.activityIndicatorViewStyle= UIActivityIndicatorViewStyleGray;

//        self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithCustomView:self.myActView];
        self.myPActView =[[PointActivityView alloc] init];
        self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithCustomView:self.myPActView];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.gameWeb =[[UIWebView alloc] initWithFrame:CGRectMake(0, 64, kDeviceWidth, KDeviceHeight-64)];
    self.gameWeb.delegate =self;
    [self.view addSubview:self.gameWeb];
    
    NSURL *url =[NSURL URLWithString:@"http://ipad.hao123.com/?tn=sitehao123#index"];
    [self.gameWeb loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"%s  %@",__func__,request.URL.absoluteString);
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"%s ",__func__);
    [self.myActView startAnimating];
    [self.myPActView startAnimating];

}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"%s ",__func__);
    [self.myActView stopAnimating];
    [self.myPActView stopAnimating];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"%s  error %@ ",__func__,error);
    return;
    [self.myActView stopAnimating];
    [self.myPActView stopAnimating];

}
@end
