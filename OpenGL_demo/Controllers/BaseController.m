//
//  BaseController.m
//  OpenGL_demo
//
//  Created by 王强 on 2018/11/7.
//  Copyright © 2018 鹰云. All rights reserved.
//

#import "BaseController.h"


@interface BaseController ()

@end

@implementation BaseController
-(void)viewWillAppear:(BOOL)animated{
    UIButton *retbtn = [UIButton new];
    retbtn.frame = CGRectMake(30, 30, 40, 40);
    retbtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:retbtn];
    [retbtn addTarget:self action:@selector(returnBtnCLick) forControlEvents:UIControlEventTouchUpInside];
}
-(void)returnBtnCLick{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
