//
//  ViewController.m
//  OpenGL_demo
//
//  Created by 王强 on 2018/11/7.
//  Copyright © 2018 鹰云. All rights reserved.
//

#import "ViewController.h"
#import "OneController.h"
#import "BaseController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tb;
@property(nonatomic,strong)NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tb];
    _arr = [NSArray arrayWithObjects:[OneController new], nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"openGL day: %li",indexPath.row+1];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseController *vc = _arr[indexPath.row];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}
-(UITableView *)tb{
    if (_tb==nil) {
        _tb = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tb.delegate = self;
        _tb.dataSource = self;
    }
    return _tb;
}

@end
