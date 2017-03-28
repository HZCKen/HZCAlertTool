//
//  HZCAlertTool.m
//  HZCAlert
//
//  Created by edz on 2017/3/28.
//  Copyright © 2017年 edz. All rights reserved.
//

#import "HZCAlertTool.h"

@implementation HZCAlertTool

+ (void)showAlertViewWithViewController:(UIViewController *)tagertViewControll title:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle buttonTitles:(NSArray *)buttonTitles actionBlock:(void (^)(NSInteger))actionBlock{
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    
    for (int i = 0; i < buttonTitles.count; i++) {
        UIAlertAction *action = [UIAlertAction actionWithTitle:buttonTitles[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            if (actionBlock) {
                actionBlock(i);
            }
        }];
        
        [alertVC addAction:action];
        
    }
    
    [tagertViewControll presentViewController:alertVC animated:YES completion:nil];
    
}


@end
