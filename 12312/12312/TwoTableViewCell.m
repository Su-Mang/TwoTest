//
//  TwoTableViewCell.m
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "TwoTableViewCell.h"

@implementation TwoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _lableTitle = [[UILabel alloc]init];
        [self.contentView addSubview:_lableTitle];
        _lableTitleLeft = [[UILabel alloc]init];
        [self.contentView addSubview:_lableTitleLeft];
        _lableTitleright = [[UILabel alloc]init];
        [self.contentView addSubview:_lableTitleright];
        _oneImageView = [[UIImageView alloc]init];
        [self.contentView addSubview:_oneImageView];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    _lableTitle.frame = CGRectMake(0, 0, 375, 20) ;
    _oneImageView.frame = CGRectMake(0, 20, 375, 60) ;
    _lableTitleright.frame = CGRectMake(200, 90, 175, 10) ;
    _lableTitleLeft.frame = CGRectMake(0, 90, 200, 10) ;
    
}

@end
