//
//  EagleScrollView.m
//  EagleScrollView
//
//  Created by zhangweicheng on 2018/6/25.
//  Copyright © 2018年 zhangweicheng. All rights reserved.
//

#import "EagleScrollView.h"

@implementation EagleScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSet];
    }
    return self;
}

-(void)initSet{
    [self addSubview:self.contentView];
}

-(void)reloadData;{
    [self.contentView reloadData];
}

-(UICollectionView*)contentView{
    if (_contentView == nil) {
        UICollectionViewLayout *layout =[[UICollectionViewLayout alloc] init];
        _contentView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _contentView.delegate = self;
        _contentView.dataSource = self;
        _contentView.pagingEnabled = true;
        [_contentView registerClass:[EagleScrollViewCell class] forCellWithReuseIdentifier:@"EagleScrollViewCell"];
    }
    return _contentView;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;{
    return 0;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;{
    EagleScrollViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"EagleScrollViewCell" forIndexPath:indexPath];
    return cell;
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;{
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;{
    return self.bounds.size;
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section;{
    return UIEdgeInsetsZero;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section;{
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;{
    return 0;
}


@end
