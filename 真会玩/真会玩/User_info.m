//
//  User_info.m
//  真会玩
//
//  Created by Coby on 16/12/21.
//  Copyright © 2016年 TXJ. All rights reserved.
//

#import "User_info.h"

@implementation User_info
+(NSString *)get_id{
    /*
     登录成功红保存用户信息
    NSString *mem_id = [NSString stringWithFormat:@"%@",sender[@"data"][@"mem_id"]];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:mem_id forKey:@"mem_id"];
     退出登录删除用户信息
     NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
     NSDictionary* dict = [ud dictionaryRepresentation];
     for(id key in dict) {
     
     [ud removeObjectForKey:key];
     
     }

     */
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *user_id = [ud objectForKey:@"user_id"];
    return user_id;
}
+ (NSString *) get_name{

    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *user_name = [ud objectForKey:@"user_name"];
    return user_name;
}
@end
