//
//  JDSystemPresentAnimationViewController.m
//  WJDStudyLibrary
//
//  Created by wangjundong on 2017/5/31.
//  Copyright © 2017年 wangjundong. All rights reserved.
//

#import "JDSystemPresentAnimationViewController.h"
#import "JDSystemTransTestViewController.h"

@interface JDSystemPresentAnimationViewController ()

@end

@implementation JDSystemPresentAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.dataSoureArray =@[
                           @{@"title":@"默认方式，竖向上推",@"ClassName":@"UIModalTransitionStyleCoverVertical"},
                           @{@"title":@"水平反转",@"ClassName":@"UIModalTransitionStyleFlipHorizontal"},
                           @{@"title":@"隐出隐现",@"ClassName":@"UIModalTransitionStyleCrossDissolve"},
                           @{@"title":@"部分翻页效果",@"ClassName":@"UIModalTransitionStylePartialCurl"},
                           
                           ];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    JDSystemTransTestViewController *vc =[[JDSystemTransTestViewController alloc]init];
    [vc setModalTransitionStyle:indexPath.row];
    
    [self presentViewController:vc animated:YES completion:nil];
}

@end
