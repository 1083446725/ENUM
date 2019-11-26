//
//  ViewController.m
//  Enum
//
//  Created by guodongdong on 2019/11/26.
//  Copyright © 2019 Dawn. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

/// 支持多选,可以传入多个类型
/// <<表示向左移动；
/// 表示 ： 1<<n 表示1向左移动n位,
/// 计算公式 ： 1*2^n 1乘以2的n次方 (DawnTypeOne = 3 << 3 用公式计算是 3 * 2^3 = 24)
typedef NS_OPTIONS (NSUInteger, DawnType) {
    DawnTypeOne = 1 << 0, // 1
    DawnTypeTwo = 1 << 1, // 2
    DawnTypeThree = 1 << 2, // 4
};

@interface ViewController ()


@property (nonatomic, assign) DawnType type;

@end

@implementation ViewController

/**
按位 与 & 运算 :
1 & 1 = 1
1 & 0 = 0
0 & 0 = 0
总结规则:有0则为0 即:一假则假
 
按位 或 | 运算:
1 | 1 = 1
1 | 0 = 1
0 | 0 = 0
总结规则: 有1则为1   即:一真则真
https://www.jianshu.com/p/9810944d6d47
*/

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 打印结果是1和2
    [self test:DawnTypeOne | DawnTypeTwo];
}

- (void)test:(DawnType)type {
    if(type & DawnTypeOne) {
        // 如果type中能取出DawnTypeOne（即包含DawnTypeOne）
        NSLog(@"DawnTypeOne  %ld",type & DawnTypeOne);
    }
    
    if (type & DawnTypeTwo) {
        // 如果type中能取出DawnTypeTwo（即包含DawnTypeTwo）
        NSLog(@"DawnTypeTwo  %ld",type & DawnTypeTwo);
    }
    
    if (type & DawnTypeThree) {
        // 如果type中能取出DawnTypeThree（即包含DawnTypeThree）
        NSLog(@"DawnTypeThree  %ld",type & DawnTypeThree);
    }
    
}


@end
