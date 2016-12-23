//
//  Home_ViewController.m
//  真会玩
//
//  Created by Coby on 16/12/20.
//  Copyright © 2016年 TXJ. All rights reserved.
//

#import "Home_ViewController.h"

@interface Home_ViewController (){
    NSArray *arr;
    UISegmentedControl *segment;
}

@end

@implementation Home_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arr = [[NSArray alloc]initWithObjects:@"关注",@"圈子", nil];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor redColor];
    
    
    
    
    _scroll.scrollEnabled = YES;
   
    _scroll.userInteractionEnabled = YES;
    
    _scroll.showsVerticalScrollIndicator = YES;
     _scroll.contentSize = CGSizeMake(WiDTH, HEIGHT*2);
//    _scroll.contentOffset = CGPointMake(0, 0*2);
//    _scroll.backgroundColor = [UIColor whiteColor];
    
    
    
    segment = [XJModel setsegment:arr];
    segment.frame = CGRectMake(25, 15, WiDTH-50, 30);
    NSLog(@"segment.frame is %f",segment.frame_y);
    [segment addTarget:self action:@selector(selected:) forControlEvents:UIControlEventValueChanged];
    [_scroll addSubview:segment];
#pragma mark - 创建UIButton圆角
    CGRect btn_cgrect=CGRectMake(100, 300, 150, 50);
    UIButton *btn=[XJModel setbtn_tag:10 btnframe:btn_cgrect title:@"退出登录" borderWidth:1.0 borderColor:[UIColor blackColor] TintColor:[UIColor whiteColor] backgroundColor:[UIColor redColor] setFontsize:14.0 cornerRadius:10.0];
    [btn addTarget:self action:@selector(btn_target) forControlEvents:UIControlEventTouchUpInside];

    [_scroll addSubview:btn];
}
-(void)btn_target{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSDictionary* dict = [ud dictionaryRepresentation];
    for(id key in dict) {
        
        [ud removeObjectForKey:key];
        
    }

    
    
}
- (void)selected:(id)sender{
     UISegmentedControl* control = (UISegmentedControl*)sender;
    switch (control.selectedSegmentIndex) {
        case 0:{
            //
            NSLog(@"关注");
            NSString *user_id = [NSString stringWithFormat:@"%@",@10];
            NSString *user_name = @"谭大爷";
            NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
            [ud setObject:user_id forKey:@"user_id"];
            [ud setObject:user_name forKey:@"user_name"];
            break;
        }
        case 1:{
            //
            NSLog(@"圈子");
            if ([User_info get_id] == nil) {
                NSLog(@"未登录");
            }else{
                NSLog(@"用户id is %@ %@",[User_info get_id],[User_info get_name]);
            }
            break;
        }
        default:
            break;
    
    
    }

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
