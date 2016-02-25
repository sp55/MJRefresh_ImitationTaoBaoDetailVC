//
//  SecondViewController.m
//  Test
//
//  Created by admin on 16/2/25.
//  Copyright © 2016年 AlezJi. All rights reserved.
//






#import "SecondViewController.h"


@interface SecondViewController ()
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, (self.view.bounds.size.height - 64) * 2);
    scrollView.pagingEnabled = YES;
    scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];
    
    
    UIImageView *one = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NO.25_挪威"]];
    one.frame = scrollView.bounds;
    [scrollView addSubview:one];
    
    
    UIImageView *two = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NO.27_葡萄牙波尔图"]];
    two.frame = CGRectMake(0, CGRectGetMaxY(one.frame), one.frame.size.width, one.frame.size.height);
    [scrollView addSubview:two];
}

@end
