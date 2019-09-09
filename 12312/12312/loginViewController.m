//
//  loginViewController.m
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "loginViewController.h"
#import "ResignViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
@interface loginViewController ()<UITextFieldDelegate,PassDelegate>
@property UITextField *mmtextField;
@property UITextField *zhtextfieldl;
@property NSString *str1;
@property NSString *str2;
@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _mmtextField =  [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 300, 50)];
    _zhtextfieldl =  [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 300, 50)];
    _mmtextField.placeholder = @"请输入密码";
    _zhtextfieldl.placeholder = @"请输入账号";
    [self.view addSubview:_mmtextField];
    [self.view addSubview:_zhtextfieldl];
    UIButton * denglubutton = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 50, 50)];
    [self.view addSubview:denglubutton];
    denglubutton.titleLabel.text = @"登陆";
    [denglubutton addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    _mmtextField.delegate = self;
    _zhtextfieldl.delegate = self;
    UIButton *zhucebutton = [[UIButton alloc]initWithFrame:CGRectMake(100, 500, 50, 50)];
    [zhucebutton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    
    [zhucebutton setTitle:@"注册" forState:UIControlStateNormal];
    [zhucebutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:zhucebutton];
    [denglubutton setTitle:@"登陆" forState:UIControlStateNormal];
    [denglubutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}
- (void)denglu {
    NSString *name =@"iOSnb123";
    NSString *pass =@"123456789";
    NSString *strtex = _zhtextfieldl.text;
    NSString *strtexmima = _mmtextField.text;
    if (([name isEqualToString:strtex]&& [pass isEqualToString:strtexmima])||([strtex isEqualToString:_str1]&&[strtexmima isEqualToString:_str2])) {
        NSLog(@"登陆成功");
        OneViewController *oneView = [[OneViewController alloc]init];
        TwoViewController *twoView = [[TwoViewController alloc]init];
        ThreeViewController *threeView = [[ThreeViewController alloc]init];
        FourViewController *fourView = [[ FourViewController alloc]init];
        FiveViewController *fiveView = [[FiveViewController alloc]init];
        UINavigationController *navOne = [[UINavigationController alloc]initWithRootViewController:oneView];
        UINavigationController *navTwo = [[UINavigationController alloc]initWithRootViewController:twoView];
        UINavigationController *navThree = [[UINavigationController alloc]initWithRootViewController:threeView];
        UINavigationController *navFour= [[UINavigationController alloc]initWithRootViewController:fourView];
        UINavigationController *navFive = [[UINavigationController alloc]initWithRootViewController:fiveView];
        navOne.tabBarItem.title = @"1";
        navTwo.tabBarItem.title = @"2";
        navThree.tabBarItem.title = @"3";
        navFour.tabBarItem.title = @"4";
        navFive.tabBarItem.title = @"5";
        NSArray *array = [NSArray arrayWithObjects:navOne,navTwo,navThree,navFour,navFive, nil];
        UITabBarController * UItabarcontroller = [[UITabBarController alloc]init];
        UItabarcontroller.tabBar.tintColor = [UIColor whiteColor];
        UItabarcontroller.viewControllers = array;
        [self presentViewController:UItabarcontroller animated:YES completion:nil];
        
    }
}
- (void)zhuce {
    ResignViewController *resingV = [[ResignViewController alloc]init];
    resingV.delegate = self;
    [self presentViewController:resingV animated:YES completion:nil];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_mmtextField resignFirstResponder];
    [_zhtextfieldl resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    // 必须辞去第一响应者后,键盘才会回缩.
    [textField resignFirstResponder];
    return YES;
}
- (void)put:(NSString *)str1and :(NSString *)str2
{
    _zhtextfieldl.text= str1and;
    _mmtextField.text = str2;
    _str1= str1and;
    _str2 = str2;
    
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
