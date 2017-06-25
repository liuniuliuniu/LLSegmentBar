//
//  LLViewController.m
//  LLSegmentBar
//
//  Created by 416997919@qq.com on 06/03/2017.
//  Copyright (c) 2017 416997919@qq.com. All rights reserved.
//

#import "LLViewController.h"
#import "LLSegmentBarVC.h"

#import "LLOneViewController.h"


@interface LLViewController ()


@property (nonatomic,weak) LLSegmentBarVC * segmentVC;

@end

@implementation LLViewController

// lazy init
- (LLSegmentBarVC *)segmentVC{
    if (!_segmentVC) {
        LLSegmentBarVC *vc = [[LLSegmentBarVC alloc]init];
        // 添加到到控制器
        [self addChildViewController:vc];
        _segmentVC = vc;
    }
    return _segmentVC;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1 设置segmentBar的frame
    self.segmentVC.segmentBar.frame = CGRectMake(0, 0, 320, 35);
    self.navigationItem.titleView = self.segmentVC.segmentBar;
    
    // 2 添加控制器的View
    self.segmentVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentVC.view];
    
    
    NSArray *items = @[@"item-one", @"item-two", @"item-three"];
    LLOneViewController *vc1 = [LLOneViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    // 3 添加标题数组和控住器数组
    [self.segmentVC setUpWithItems:items childVCs:@[vc1,vc2,vc3]];
    
    
    // 4  配置基本设置  可采用链式编程模式进行设置
    [self.segmentVC.segmentBar updateWithConfig:^(LLSegmentBarConfig *config) {
        config.itemNormalColor([UIColor blackColor]).itemSelectColor([UIColor redColor]).indicatorColor([UIColor greenColor]);
    }];
    
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar_bg_64"] forBarMetrics:UIBarMetricsDefault];
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
