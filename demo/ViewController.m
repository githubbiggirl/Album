//
//  ViewController.m
//  demo
//
//  Created by qingyun on 15/12/18.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *firstView;
@property (nonatomic, strong) UIView *secondView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    _firstView = [[UIView alloc] initWithFrame:CGRectMake(0,100, 375, 557)];
    _firstView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_firstView];
    _firstView.hidden =NO;

    _secondView = [[UIView alloc] initWithFrame:CGRectMake(0,0, 375, 557)];
    _secondView.backgroundColor = [UIColor redColor];
    [_firstView addSubview:_secondView];
    _secondView.hidden =YES;

    UIButton *Btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    [self.view addSubview:Btn];
    [self.firstView insertSubview:Btn aboveSubview:_secondView];
    [Btn setTitle:@"歌曲" forState:UIControlStateNormal];
    [Btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)clickBtn:(UIButton *)sender
{
    if (self.secondView.isHidden) {
        self.secondView.hidden = NO;
        sender.selected = YES;
//        sender.titleLabel.text = @"歌词";
        [sender setTitle:@"歌词" forState:UIControlStateNormal];
    }else{
        self.secondView.hidden = YES;
        sender.selected = NO;
        [sender setTitle:@"歌曲" forState:UIControlStateNormal];

    }
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
