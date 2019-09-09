//
//  ResignViewController.m
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ResignViewController.h"

@interface ResignViewController ()<UITextFieldDelegate>
@property UITextField *mmtextField;
@property UITextField *zhtextfieldl;
@end

@implementation ResignViewController

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
    //[self.view addSubview:denglubutton];
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
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_mmtextField resignFirstResponder];
    [_zhtextfieldl resignFirstResponder];
}
- (void)zhuce {
    [self.delegate put:_zhtextfieldl.text :_mmtextField.text ];
    [self dismissViewControllerAnimated:YES completion:nil];
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
