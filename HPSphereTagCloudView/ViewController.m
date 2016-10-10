//
//  ViewController.m
//  HPSphereTagCloudView
//
//  Created by Jason on 2016/10/10.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import "HPSphereView.h"


@interface ViewController ()
@property (nonatomic, retain) HPSphereView *sphereView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _sphereView = [[HPSphereView alloc] initWithFrame:CGRectMake(0, 100, 320, 320)];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    for (NSInteger i = 0; i < 50; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:[NSString stringWithFormat:@"P%ld", i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:24.];
        btn.frame = CGRectMake(0, 0, 60, 20);
        [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [array addObject:btn];
        [_sphereView addSubview:btn];
    }
    [_sphereView setCloudTags:array];
    _sphereView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_sphereView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
