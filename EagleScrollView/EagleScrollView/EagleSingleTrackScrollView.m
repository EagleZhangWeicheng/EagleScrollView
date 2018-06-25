//
//  EagleSingleTrackScrollView.m
//  EagleScrollView
//
//  Created by zhangweicheng on 2018/6/25.
//  Copyright © 2018年 zhangweicheng. All rights reserved.
//

#import "EagleSingleTrackScrollView.h"

@implementation EagleSingleTrackScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        [self initSet];
    }
    return self;
}

-(void)initSet{
    [super initSet];
    //设置水平
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.contentView.collectionViewLayout = layout;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;{
    if ([self.dataSource respondsToSelector:@selector(eagleScrollView:numberOfItemsInSection:)]) {
        return [self.dataSource eagleScrollView:self numberOfItemsInSection:section];
    }
    return 0;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;{
    EagleScrollViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"EagleScrollViewCell" forIndexPath:indexPath];
    
    if ([self.dataSource respondsToSelector:@selector(eagleScrollView:cellForItemAtIndexPath:)]) {
        UIViewController *viewController = [self.dataSource eagleScrollView:self cellForItemAtIndexPath:indexPath];
        cell.viewController = viewController;
    }

    return cell;
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;{
    return 1;
}

@end
