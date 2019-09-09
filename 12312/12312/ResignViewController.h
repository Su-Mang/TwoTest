//
//  ResignViewController.h
//  TwoTest
//
//  Created by 岳靖翔 on 2019/9/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PassDelegate <NSObject>
-(void)put:(NSString*)str1and:(NSString*)str2;
@end
NS_ASSUME_NONNULL_BEGIN
@interface ResignViewController : UIViewController
@property(nonatomic,assign)id<PassDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
