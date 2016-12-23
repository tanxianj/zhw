//
//  XJModel.h
//  真会玩
//
//  Created by Coby on 16/12/20.
//  Copyright © 2016年 TXJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XJModel : NSObject
#pragma mark - 创建setsegment
+(UISegmentedControl *)setsegment:(NSArray *)arry;
#pragma mark - 创建UIButton
+(UIButton *)setbtn:(NSInteger)tag btnframe:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)Color;
#pragma mark - 创建UIButton圆角
+(UIButton *)setbtn_tag:(NSInteger)tag btnframe:(CGRect)frame title:(NSString *)title borderWidth:(CGFloat)width borderColor:(UIColor *)Color TintColor:(UIColor *)TintColor backgroundColor:(UIColor *)bgcolor setFontsize:(CGFloat)size cornerRadius:(CGFloat)flt;
@end
