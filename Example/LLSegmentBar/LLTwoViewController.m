//
//  LLTwoViewController.m
//  LLSegmentBar
//
//  Created by liushaohua on 2017/6/21.
//  Copyright © 2017年 416997919@qq.com. All rights reserved.
//

#import "LLTwoViewController.h"

#import "LLSegmentBarVC.h"

#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]

#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface LLTwoViewController ()

@property (nonatomic, weak) LLSegmentBarVC *segContentVC;

@end

@implementation LLTwoViewController


- (LLSegmentBarVC *)segContentVC{
    if (!_segContentVC) {
        LLSegmentBarVC *contentVC = [[LLSegmentBarVC alloc]init];
        [self addChildViewController:contentVC];
        _segContentVC = contentVC;
    }
    return _segContentVC;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.segContentVC.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        
    [self.view addSubview:self.segContentVC.view];
    
    NSMutableArray *arrM = [NSMutableArray array];
    NSMutableArray *titleArrM = [NSMutableArray arrayWithCapacity:10];
    for (NSInteger i = 0; i < 10; i++) {
        UIViewController *VC = [UIViewController new];
        VC.view.backgroundColor = randomColor;
        NSString *title = [NSString stringWithFormat:@"title%zd",i];
        [titleArrM addObject:title];
        [arrM addObject:VC];
    }
    
    
    [self.segContentVC setUpWithItems:titleArrM childVCs:arrM];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
