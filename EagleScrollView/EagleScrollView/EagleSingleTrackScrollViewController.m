//
//  EagleSingleTrackScrollViewController.m
//  EagleScrollView
//
//  Created by zhangweicheng on 2018/6/25.
//  Copyright © 2018年 zhangweicheng. All rights reserved.
//

#import "EagleSingleTrackScrollViewController.h"
#import "EagleSingleTrackScrollView.h"

@interface EagleSingleTrackScrollViewController ()<EagleScrollViewDataSource>
@property(nonatomic,strong)EagleSingleTrackScrollView *eagleSingleTrackScrollView;
@end

@implementation EagleSingleTrackScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.eagleSingleTrackScrollView];
}

-(EagleSingleTrackScrollView*)eagleSingleTrackScrollView{
    if (_eagleSingleTrackScrollView == nil) {
        _eagleSingleTrackScrollView = [[EagleSingleTrackScrollView alloc] initWithFrame:self.view.bounds];
        _eagleSingleTrackScrollView.dataSource = self;
        [_eagleSingleTrackScrollView reloadData];
    }
    return _eagleSingleTrackScrollView;
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"self.view.frame %@",NSStringFromCGRect(self.view.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)eagleScrollView:(EagleScrollView *)eagleScrollView numberOfItemsInSection:(NSInteger)section;{
    return 100;
}

- (__kindof UIViewController *)eagleScrollView:(EagleScrollView *)eagleScrollView cellForItemAtIndexPath:(NSIndexPath *)indexPath;{
    UIViewController *view = [[UIViewController alloc] init];
    view.view.backgroundColor = [UIColor redColor];
    return view;
}


@end
