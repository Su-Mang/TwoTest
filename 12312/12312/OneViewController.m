//
//  OneViewController.m
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "OneViewController.h"
#import "NewViewController.h"
@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *braButton = [[UIBarButtonItem alloc]initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(push)];
    self.navigationItem.rightBarButtonItem =  braButton;
    
}
- (void)push{
    NewViewController *newView = [[NewViewController alloc]init];
    [self presentViewController:newView animated:YES completion:nil];
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
