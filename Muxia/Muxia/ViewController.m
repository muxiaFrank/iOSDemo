//
//  ViewController.m
//  Muxia
//
//  Created by jack young on 2017/5/6.
//  Copyright © 2017年 jack young. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    // 登录界面组成
    //用户名提示
    //密码提示
    //登陆 注册按钮
    
    //用户名提示
    UILabel* _lbUserName;
    
    //密码名提示
    UILabel* _lbPassword;
    
    //用户名
    UITextField* _tfUserName;
    
    //用户名
    UITextField* _tfPassword;
    
    //密码
    UIButton* _btLogin;
    
    
    UIButton* _btRegister;
    

}


@end

@implementation ViewController




-(void) pressLogin
{
    
}

-(void) pressRegister
{
    
}

//创建UI控件
- (void) createUI
{
    //定义并创建
    // 显示在屏幕
    UILabel* label = [[UILabel alloc] init];
    
    //赋值文字
    label.text = @"Hello World!";
    
    //位置
    label.frame = CGRectMake(100, 400, 160, 120);
    
    
    //背景颜色
    label.backgroundColor = [UIColor clearColor];
    
    //显示到屏幕
    [self.view addSubview:label];
    
    //文字大小
    label.font = [UIFont systemFontOfSize:30];
    
    // 文字颜色
    label.textColor = [UIColor grayColor];
    
    label.numberOfLines = 0;
}

-(void) createUIRectButtton
{
    //创建btn对象
    //圆角类型btn
    //通过类方法进行创建  类名+方法名
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //设置位置
    btn.frame = CGRectMake(100, 400, 100, 40);
    
    //
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor grayColor];
    
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //用户名提示便签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"用户名";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    //用户密码提示
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"密码";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    
    
    //用户名输入
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入应户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassword =[[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    
    //登陆和注册btn
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    
    [_btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    
    // 将所有控件添加
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
    
    

    [self createUI];
    
    [self createUIRectButtton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
