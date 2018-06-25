//
//  EagleScrollViewCell.m
//  EagleScrollView
//
//  Created by zhangweicheng on 2018/6/25.
//  Copyright © 2018年 zhangweicheng. All rights reserved.
//

#import "EagleScrollViewCell.h"

@implementation EagleScrollViewCell
-(void)setViewController:(UIViewController *)viewController{
    if (![viewController isEqual:_viewController]) {
        _viewController = viewController;
        
        [_viewController.view removeFromSuperview];
        viewController.view.bounds = self.bounds;
        [self addSubview:viewController.view];
    }
}
@end
