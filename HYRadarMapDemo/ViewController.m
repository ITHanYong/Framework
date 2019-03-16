//
//  ViewController.m
//  HYRadarMapDemo
//
//  Created by HanYong on 2019/3/16.
//  Copyright © 2019 HanYong. All rights reserved.
//

#import "ViewController.h"
#import <HYRadarMapFramework/RadarMapView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ElementItem *item1 = [[ElementItem alloc]init];
    item1.itemPercent = @[@"0.85",@"0.8",@"0.95",@"0.9",@"1.0"];
    item1.itemColor = [UIColor greenColor];

    NSArray *titles = @[@"输出",@"KDA",@"发育",@"团战",@"生存"];

    RadarMapView *radar = [[RadarMapView alloc]initWithRadarElements:titles lengthColor:[UIColor colorWithRed:168.0/255.0 green:168.0/255.0 blue:168.0/255.0 alpha:1]];


    [radar addAbilitysWithElements:@[item1]];

    radar.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:radar];
}


@end
