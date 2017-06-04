//
//  LLViewController.m
//  LLSegmentBar
//
//  Created by 416997919@qq.com on 06/03/2017.
//  Copyright (c) 2017 416997919@qq.com. All rights reserved.
//

#import "LLViewController.h"
#import "LLSegmentBarVC.h"


@interface LLViewController ()


@property (nonatomic,weak) LLSegmentBarVC * segmentVC;

@end

@implementation LLViewController

- (LLSegmentBarVC *)segmentVC{
    if (!_segmentVC) {
        LLSegmentBarVC *vc = [[LLSegmentBarVC alloc]init];
        [self addChildViewController:vc];
        _segmentVC = vc;
    }
    return _segmentVC;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    // 1 设置segmentBar的frame
    self.segmentVC.segmentBar.frame = CGRectMake(0, 0, 320, 35);
    self.segmentVC.segmentBar.backgroundColor = [UIColor greenColor];
    self.navigationItem.titleView = self.segmentVC.segmentBar;
    self.segmentVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentVC.view];
    
    // 2 设置标题
    NSArray *items = @[@"item-one", @"item-two", @"item-three"];
    
    // 3 在contentView, 展示子控制器的视图内容
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    [self.segmentVC setUpWithItems:items childVCs:@[vc1,vc2,vc3]];
    
    // 4  配置基本设置  采用链式编程模式进行设置
    [self.segmentVC.segmentBar updateWithConfig:^(LLSegmentBarConfig *config) {
        config.itemNormalColor([UIColor blackColor]).itemSelectColor([UIColor redColor]).indicatorColor([UIColor greenColor]);
    }];
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
