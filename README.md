# LLSegmentBar

[![CI Status](http://img.shields.io/travis/416997919@qq.com/LLSegmentBar.svg?style=flat)](https://travis-ci.org/416997919@qq.com/LLSegmentBar)
[![Version](https://img.shields.io/cocoapods/v/LLSegmentBar.svg?style=flat)](http://cocoapods.org/pods/LLSegmentBar)
[![License](https://img.shields.io/cocoapods/l/LLSegmentBar.svg?style=flat)](http://cocoapods.org/pods/LLSegmentBar)
[![Platform](https://img.shields.io/cocoapods/p/LLSegmentBar.svg?style=flat)](http://cocoapods.org/pods/LLSegmentBar)

 ![LLSegmentBar.gif](https://github.com/liuniuliuniu/LLSegmentBar/blob/master/LLSegmentBar.gif)


## Installation

```ruby
pod "LLSegmentBar"
```

```
// 1 设置segmentBar的frame
self.segmentVC.segmentBar.frame = CGRectMake(0, 0, 320, 35);
self.navigationItem.titleView = self.segmentVC.segmentBar;
// 2 添加控制器的V
self.segmentVC.view.frame = self.view.bounds;
[self.view addSubview:self.segmentVC.view];



// 3 添加控制器数组和标题数组
NSArray *items = @[@"item-one", @"item-two", @"item-three"];
UIViewController *vc1 = [UIViewController new];
vc1.view.backgroundColor = [UIColor redColor];
UIViewController *vc2 = [UIViewController new];
vc2.view.backgroundColor = [UIColor greenColor];
UIViewController *vc3 = [UIViewController new];
vc3.view.backgroundColor = [UIColor yellowColor];
[self.segmentVC setUpWithItems:items childVCs:@[vc1,vc2,vc3]];

// 5  配置基本设置  采用链式编程模式进行设置
[self.segmentVC.segmentBar updateWithConfig:^(LLSegmentBarConfig *config) {
config.itemNormalColor([UIColor blackColor]).itemSelectColor([UIColor redColor]).indicatorColor([UIColor greenColor]);
}];

```




## Author

* 代码使用过程中，发现任何问题，可以随时issue
* 如果有更多建议或者想法也可以直接联系我 QQ:416997919
* 本人简书地址  也可随时在简书留言 [奥卡姆剃须刀](http://www.jianshu.com/u/f9cc13708dfc)
* 觉得框架对你有一点点帮助的，就请支持下，点个赞。


## License

LLSegmentBar is available under the MIT license. See the LICENSE file for more info.
