//
//  HZCAlertTool.h
//  HZCAlert
//
//  Created by edz on 2017/3/28.
//  Copyright © 2017年 edz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HZCAlertTool : NSObject

+ (void)showAlertViewWithViewController:(UIViewController *)tagertViewControll
                                  title:(NSString *)title
                                message:(NSString *)message
                         preferredStyle:(UIAlertControllerStyle)preferredStyle buttonTitles :(NSArray *)buttonTitles actionBlock:(void(^)(NSInteger index))actionBlock;

@end
