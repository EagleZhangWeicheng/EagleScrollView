//
//  EagleScrollView.h
//  EagleScrollView
//
//  Created by zhangweicheng on 2018/6/25.
//  Copyright © 2018年 zhangweicheng. All rights reserved.
//
#import <UIKit/UIKit.h>
@class EagleScrollView;
@protocol EagleScrollViewDataSource<NSObject>
@required
- (NSInteger)eagleScrollView:(EagleScrollView *)eagleScrollView numberOfItemsInSection:(NSInteger)section;
- (__kindof UIViewController *)eagleScrollView:(EagleScrollView *)eagleScrollView cellForItemAtIndexPath:(NSIndexPath *)indexPath;

@optional

- (NSInteger)numberOfSectionsInEagleScrollView:(EagleScrollView *)eagleScrollView;
@end

#import "EagleScrollViewCell.h"


@interface EagleScrollView : UIView<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)UICollectionView *contentView;
-(void)initSet;
-(void)reloadData;
@property (nonatomic, weak, nullable) id <EagleScrollViewDataSource> dataSource;

@end
