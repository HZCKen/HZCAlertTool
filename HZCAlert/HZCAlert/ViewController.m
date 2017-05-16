//
//  ViewController.m
//  HZCAlert
//
//  Created by edz on 2017/3/28.
//  Copyright © 2017年 edz. All rights reserved.
//

#import "ViewController.h"
#import "HZCAlertTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)dealloc {
//    NSLog(@"%s", __FUNCTION__);
}

- (IBAction)BtnDidClick:(UIButton *)sender {
    
    
    [HZCAlertTool showAlertViewWithViewController:self title:nil message:nil  preferredStyle:UIAlertControllerStyleActionSheet buttonTitles:@[@"取消",@"确定"] actionBlock:^(NSInteger index) {
        
        if (index == 0) {
            NSLog(@"取消");
        }else if (index == 1) {
            
            UIViewController *vc = [[UIViewController alloc]init];
            vc.view.backgroundColor = [UIColor redColor];
            
            [self.navigationController pushViewController:vc animated:YES];
            
            NSLog(@"确定");
        }
        
    }];
//
//    
//    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提示操作" message:@"请选择你的操作" preferredStyle:UIAlertControllerStyleAlert];
////
////    UIAlertAction *cancalAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
////        NSLog(@"取消");
////    }];
////    
////    
//    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    UIViewController *vc = [[UIViewController alloc]init];
//                    vc.view.backgroundColor = [UIColor redColor];
//        
//                    [self.navigationController pushViewController:vc animated:YES];
//    }];
////
////    [alertVC addAction:cancalAction];
//    [alertVC addAction:sureAction];
//    
//    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//        
//    }];
////
//    [self presentViewController:alertVC animated:YES completion:nil];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
