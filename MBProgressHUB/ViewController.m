//
//  ViewController.m
//  MBProgressHUB
//
//  Created by 李李贤军 on 15/12/23.
//  Copyright © 2015年 TH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ProgressHubView = [[THMBProgressHubView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-36, self.view.frame.size.height/2-45, 79, 90)];
    [self.view addSubview:ProgressHubView];
    
    
    
    UIButton*button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"开始加载" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(100,60,100,30)];
    [button addTarget:self action:@selector(StartBtn) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"Futura-CondensedMedium" size:16.0f];
    [self.view addSubview:button];
    
    UIButton*button2=[UIButton buttonWithType:UIButtonTypeCustom];
    [button2 setTitle:@"加载成功(消失)" forState:UIControlStateNormal];
    [button2 setFrame:CGRectMake(100,100,120,30)];
    [button2 addTarget:self action:@selector(StopBtn) forControlEvents:UIControlEventTouchUpInside];
    button2.titleLabel.font = [UIFont fontWithName:@"Futura-CondensedMedium" size:16.0f];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    UIButton*button3=[UIButton buttonWithType:UIButtonTypeCustom];
    [button3 setTitle:@"加载失败" forState:UIControlStateNormal];
    [button3 setFrame:CGRectMake(100,140,80,30)];
    [button3 addTarget:self action:@selector(StopFailBtn) forControlEvents:UIControlEventTouchUpInside];
    button3.titleLabel.font = [UIFont fontWithName:@"Futura-CondensedMedium" size:16.0f];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:button3];
    
   }

-(void)StartBtn
{
    
    [ProgressHubView startAnimationWithText:@"正在加载"];
}

/*
 当Type为YES时消失  NO时不消失**/
 
-(void)StopBtn
{
    [ProgressHubView stopAnimationWithLoadText:@"加载成功" withType:YES];//加载成功
}

-(void)StopFailBtn
{
    [ProgressHubView stopAnimationWithLoadText:@"加载失败" withType:NO];//加载失败
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }

@end
