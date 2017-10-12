//
//  SecondVC.m
//  TestProject
//
//  Created by Lijing on 2017/7/10.
//  Copyright (c) 2017 TOON. All rights reserved.
//

#import "SecondVC.h"
#import "ToonBus.h"
#import "ViewController.h"
#import "KYCuteView.h"

@interface SecondVC ()<ToonBusDelegate>

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    [[ToonBus sharedInstance] bindTarget:self forKey:ToonBusKeyB];


    KYCuteView *cuteView = [[KYCuteView alloc]initWithPoint:CGPointMake(25, 505) superView:self.view];
    cuteView.viscosity  = 20;
    cuteView.bubbleWidth = 25;
    cuteView.bubbleColor = [UIColor colorWithRed:0 green:0.722 blue:1 alpha:1];
    [cuteView setUp];
    [cuteView addGesture];

    //注意：设置 'bubbleLabel.text' 一定要放在 '-setUp' 方法之后
    //Tips:When you set the 'bubbleLabel.text',you must set it after '-setUp'
    cuteView.bubbleLabel.text = @"113";

//    [self.view addSubview:cuteView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    NSLog(@"read value from bus: %@", [[ToonBus sharedInstance] valueForKey:ToonBusKeyA]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)toonBusValueChangedForKey:(NSString *_Nullable)key latestValue:(id)value {

    NSLog(@"%@  \n >>get message from key: %@ value: %@",self, key, value);

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (void)dealloc {

    NSLog(@"~~~~~~~ dealloc %@", self);

}

@end
