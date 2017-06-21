//
//  LLOneViewController.m
//  LLSegmentBar
//
//  Created by liushaohua on 2017/6/21.
//  Copyright © 2017年 416997919@qq.com. All rights reserved.
//

#import "LLOneViewController.h"
#import "LLTwoViewController.h"


@interface LLOneViewController ()

@end

@implementation LLOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LLTwoViewController *twoVC = [LLTwoViewController new];
    
    [self.navigationController pushViewController:twoVC animated:YES];
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

@end
