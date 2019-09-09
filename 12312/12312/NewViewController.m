//
//  NewViewController.m
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "NewViewController.h"
#import "OneTableViewCell.h"
#import "TwoTableViewCell.h"
@interface NewViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableVIew;
@property(nonatomic,strong)UIScrollView*scr;
@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageBack = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 325)];
    [self.view addSubview:imageBack];
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField * search = [[UITextField  alloc]initWithFrame:CGRectMake(20, 35, 315, 40)];
    search.placeholder = @"找影视剧 影人 影院 演出 图书";
    [imageBack addSubview:search];
    UIImageView  *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 75, 375, 100)];
    [imageBack addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"A53C0F90-9C01-4773-8E48-BE59279DF501.png"];
    _tableVIew = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, self.view.frame.size.height) style:UITableViewStyleGrouped];
    _tableVIew.dataSource = self;
    _tableVIew.delegate = self;
    [self.view addSubview:_tableVIew];
    _scr = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 175, 750, 150)];
    [imageBack addSubview:_scr];
    _scr.backgroundColor = [UIColor blueColor];
    _tableVIew.tableHeaderView =  imageBack;
    imageBack.userInteractionEnabled = YES;
    UIButton *buttonLeft = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    UIButton * buttonright = [[UIButton alloc]initWithFrame:CGRectMake(100, 0, 100, 30)];
    [_scr addSubview:buttonLeft];
    [_scr addSubview:buttonright];
    UIButton *buttonLeft1 = [[UIButton alloc]initWithFrame:CGRectMake(375, 0, 100, 30)];
    UIButton * buttonright1 = [[UIButton alloc]initWithFrame:CGRectMake(475, 0, 100, 30)];
    [_scr addSubview:buttonLeft1];
    [_scr addSubview:buttonright1];
    [buttonLeft setTitle:@"正在热映" forState:UIControlStateNormal];
    [buttonright setTitle:@"即将上映" forState:UIControlStateNormal];
    [buttonLeft1 setTitle:@"正在热映" forState:UIControlStateNormal];
    [buttonright1 setTitle:@"即将上映" forState:UIControlStateNormal];
    UIScrollView *scr1 = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 30, 375, 120)];
    [_scr addSubview:scr1];
    // _scr.contentSize = CGSizeMake(750, 0);
    scr1.contentSize = CGSizeMake(500, 0);
    for(int i =0; i<10;i++)
    {
        UIButton *buttonZ =[[UIButton alloc]initWithFrame:CGRectMake(i*50, 0, 50, 120)];
        [scr1 addSubview:buttonZ];
        [buttonZ setTitle:@"123" forState:UIControlStateNormal];
        buttonZ.tag = i;
    }
    [buttonright addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [buttonright1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    UIScrollView *scr2 = [[UIScrollView alloc]initWithFrame:CGRectMake(375, 30, 375, 120)];
    [_scr addSubview:scr2];
    scr1.contentSize = CGSizeMake(500, 0) ;
    for(int i =0; i<10;i++)
    {
        UIButton *buttonZ =[[UIButton alloc]initWithFrame:CGRectMake(i*50, 0, 50, 120)];
        [scr2 addSubview:buttonZ];
        [buttonZ setTitle:@"213" forState:UIControlStateNormal];
    }
    [buttonLeft addTarget:self action:@selector(cc) forControlEvents:UIControlEventTouchUpInside];
    [buttonLeft1 addTarget:self action:@selector(cc) forControlEvents:UIControlEventTouchUpInside];
    scr2.contentSize = CGSizeMake(500, 0);
    
}
-(void) cc
{
    _scr.contentOffset = CGPointMake(0, 0);
}
-(void)click
{
    _scr.contentOffset = CGPointMake(375, 0);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0) {
        return 150;
    }
    else
        return  150;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section%2==0)
    {
        static NSString* id = @"0";
        OneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
        if (cell == nil) {
            cell = [[OneTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
            cell.lableTitleright.text = @"猫眼资讯";
            cell.lableTitleLeft.text = @"100赞";
            cell.oneImageView.image = [UIImage imageNamed: @"D649CFB4-C5A4-4303-9513-D46AB6EFEDD4.png"];
            cell.twoImageView.image = [UIImage imageNamed:@"A50027E2-C5B6-4576-8A96-AE00DC00C750.png"];
            cell.threeImageView.image = [UIImage imageNamed:@"060A5358-0B5B-40B7-9838-FFF1788260DF.png"];
            
        }
        return cell;
    }
    else{
        static NSString* id = @"1";
        TwoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
        if (cell == nil) {
            cell = [[TwoTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
            cell.oneImageView.image = [UIImage imageNamed:@"C3392E95-ECC4-4D1F-881E-DCCDC67B7691.png"];
            cell.lableTitleLeft.text = @"猫眼资讯";
            cell.lableTitleright.text = @"6赞";
        }
        return cell;
    }
}







@end
