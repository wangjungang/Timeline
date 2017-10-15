//
//  ViewController.m
//  Timeline
//
//  Created by YaSha_Tom on 2017/8/18.
//  Copyright © 2017年 YaSha-Tom. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import <UITableView+FDTemplateLayoutCell.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *tableview;

@property (nonatomic,strong)NSArray *titleArray;

@property (nonatomic,strong)NSArray *contentArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.titleArray = @[@"张三",@"李四",@"王五",@"李大海",@"张晓红"];
    self.contentArray = @[@"同意执行该项目计划",@"",@"杰克丹尼健康的时刻快递费看看看得开福克斯快速贷款福克斯开始的看法看到客服",@"赞同",@"卡夫卡赶快打开第三方"];
    self.tableview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self.tableview registerClass:[TableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableview];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 100;
    return [tableView fd_heightForCellWithIdentifier:@"Cell" cacheByIndexPath:indexPath configuration:^(TableViewCell *cell) {
        
        //防止数据为空时，cell的高度有误差
        if ([self.contentArray[indexPath.row] length] > 0) {
            cell.contentlabel.text = self.contentArray[indexPath.row];
        }else{
            cell.contentlabel.text = @"设置";
        }
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    if (indexPath.row == 0) {
        [cell.onLine removeFromSuperview];
    }
    if (indexPath.row == self.contentArray.count-1) {
        [cell.downLine removeFromSuperview]; 
    }
    cell.titleLabel.text = self.titleArray[indexPath.row];
    cell.contentlabel.text = self.contentArray[indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
