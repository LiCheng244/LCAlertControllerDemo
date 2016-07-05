//
//  ViewController.m
//  CustomAlertControllerDemo
//
//  Created by LiCheng on 16/7/5.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)showCustomAlert:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];
    
    // 使用富文本来改变alert的title字体大小和颜色
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:@"这里是标题"];
    [title addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:24] range:NSMakeRange(0, 2)];
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [alert setValue:title forKey:@"attributedTitle"];
    
    
    // 使用富文本来改变alert的message字体大小和颜色
    // NSMakeRange(0, 2) 代表:从0位置开始 两个字符
    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@"这里是正文信息"];
    [message addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:10] range:NSMakeRange(0, 6)];
    [message addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [message addAttribute:NSForegroundColorAttributeName value:[UIColor brownColor] range:NSMakeRange(3, 3)];
    
    [alert setValue:message forKey:@"attributedMessage"];
    
    
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    // 设置按钮背景图片
    UIImage *accessoryImage = [[UIImage imageNamed:@"selectRDImag.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cancelAction setValue:accessoryImage forKey:@"image"];
    
    // 设置按钮的title颜色
    [cancelAction setValue:[UIColor lightGrayColor] forKey:@"titleTextColor"];
    
    // 设置按钮的title的对齐方式
    [cancelAction setValue:[NSNumber numberWithInteger:NSTextAlignmentLeft] forKey:@"titleTextAlignment"];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    
    
    [alert addAction:okAction];
    [alert addAction:cancelAction];
    
    
    
    [self presentViewController:alert animated:YES completion:nil];
    

}

@end
