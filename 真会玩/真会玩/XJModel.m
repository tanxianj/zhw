//
//  XJModel.m
//  真会玩
//
//  Created by Coby on 16/12/20.
//  Copyright © 2016年 TXJ. All rights reserved.
//

#import "XJModel.h"

@implementation XJModel
#pragma mark - 创建UISegmentedControl
+(UISegmentedControl *)setsegment:(NSArray *)arry{
    UISegmentedControl *sgmt = [[UISegmentedControl alloc]initWithItems:arry];
    sgmt.selectedSegmentIndex = 0;
     [sgmt setTintColor:[UIColor redColor]];
    return sgmt;
}
#pragma mark - 创建UIButton
+(UIButton *)setbtn:(NSInteger)tag btnframe:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)bgcolor{
    UIButton *btn = [[UIButton  alloc]initWithFrame:frame];
    btn.tag=tag;
    [btn setTitle:title forState:UIControlStateNormal];
    btn.backgroundColor = bgcolor;
    return btn;
}

#pragma mark - 创建UIButton圆角
+(UIButton *)setbtn_tag:(NSInteger)tag btnframe:(CGRect)frame title:(NSString *)title borderWidth:(CGFloat)width borderColor:(UIColor *)Color TintColor:(UIColor *)TintColor backgroundColor:(UIColor *)bgcolor setFontsize:(CGFloat)size cornerRadius:(CGFloat)flt{
    UIButton *btn = [[UIButton  alloc]initWithFrame:frame];
    btn.tag=tag;
    [btn setTitle:title forState:UIControlStateNormal];
    btn.layer.borderWidth =width;
    btn.layer.borderColor =Color.CGColor;
    btn.layer.cornerRadius = flt;
    [btn setTintColor:TintColor];
    [btn setFont:[UIFont systemFontOfSize:size]];
    btn.backgroundColor = bgcolor;
    return btn;
}
@end
