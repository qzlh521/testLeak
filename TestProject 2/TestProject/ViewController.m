//
//  ViewController.m
//  TestProject
//
//  Created by Lijing on 2017/3/27.
//  Copyright © 2017年 TOON. All rights reserved.
//

#import "ViewController.h"
//#import "FindDuplicateFileTool.h"
//#import "TesView.h"
//#import "SecondVC.h"
//#import "TNWeakMutableArray.h"
//#import "TNUser.h"
//#import "TNFeedItem.h"
//#import "MJExtension.h"
//#import "NSString+SearchStringDrawing.h"

@interface ViewController ()
//@property (nonatomic, strong)TNWeakMutableArray *weakMutableArray;
//@property (nonatomic, strong)TesView *tesView;


@property (nonatomic,strong)NSMutableArray * testBlockArr;
//@property (nonatomic,strong)NSMutableArray * testDataSourceBlockArr;

@end

@implementation ViewController{
    NSMutableArray *_src;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    TNFeedManager*man = [[TNFeedManager alloc]init];
//
//    [man registerDatabaseWithUserId:@"abc"];

    _src = [@[] mutableCopy];
//    self.weakMutableArray = [[TNWeakMutableArray alloc] init];
//    // Do any additional setup after loading the view, typically from a nib.
//    self.tesView = [[TesView alloc] initWithFrame:CGRectMake(0, 0, 180, 90)];

    
    self.testBlockArr = [NSMutableArray arrayWithCapacity:0];
    
    for (int i = 0; i < 100; i++) {
        [self.testBlockArr addObject:@[[NSObject new]]];
    }
    
    
//    _testDataSourceBlockArr = [@[] mutableCopy];
//
//    for (int i = 0; i < 100000; i++) {
//        [_testDataSourceBlockArr addObject:@[[NSObject new]]];
//    }
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeInfoDark];

    [btn addTarget:self action:@selector(btnTapped:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 120, 100, 100);
    [self.view addSubview:btn];
    self.view.backgroundColor = [UIColor brownColor];

}
- (void)test1{
//    NSArray * item = self.testBlockArr[0];
    
    
    NSString * str = @"aaa";
    for (int i = 0; i < 100000; i++) {
        void (^testBlock)() = ^{
            NSLog(@"%@",str);
        };
    testBlock();
    };
    
    
    for (int i = 0; i < 1000; i++) {
        void (^testBlock)() = ^{
            NSArray * testArr = self.testBlockArr[0];
            [testArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@",obj);
            }];
        };
        testBlock();
    }
    
    
    
}
- (void)nnn{
    
}

-(void)btnTapped:(id)sender{
    
    [self test1];
    
    
    //__block 修饰符导致的内存泄漏
//    NSString*res =  [str getTruncateWithMaxWidth:20 attributes:nil placeHolder:nil];
    
    //block 为啥导致泄漏
//    [self blockTest];

    NSLog(@"");
}

- (void)blockTest{
    
//    @autoreleasepool{
//
    NSMutableArray * test = self.testBlockArr;
    NSMutableArray * test2 = [NSMutableArray arrayWithCapacity:0];

    NSMutableArray * _testDataSourceBlockArr = [@[] mutableCopy];
    
    for (int i = 0; i < 100000; i++) {
        [_testDataSourceBlockArr addObject:@[[NSObject new]]];
    }

   

    for (NSArray * objArr in _testDataSourceBlockArr) {
        [objArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            if ([test containsObject:obj]) {
//
//            }
            [test2 addObject:obj];
        }];
    }
//    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-(void)addNoretainedObject{
//    SecondVC *vc = [[SecondVC alloc] init];
//
//
//    [self.weakMutableArray addObject:vc];
//
////    NSLog(@"object: %@ %@", _src[0], [nv nonretainedObjectValue]);
//    NSLog(@"in object: %i %@", self.weakMutableArray.usableCount, [self.weakMutableArray objectAtWeakMutableArrayIndex:0]);
////    UIViewController *tar;
////    [nv getValue:&tar];
////    NSLog(@"pointerValue %@", tar);
//
//
//}

- (NSMutableArray *)testBlockArr{
    if (!_testBlockArr) {
        _testBlockArr = [@[[NSObject new],[NSObject new]] mutableCopy];
    }
    return _testBlockArr;
}
//- (NSMutableArray *)testDataSourceBlockArr{
//    if (!_testDataSourceBlockArr) {
//        _testDataSourceBlockArr = [@[] mutableCopy];
//        for (int i = 0; i < 100000; i++) {
//            [_testDataSourceBlockArr addObject:[@[[NSObject new]] copy]];
//        }
//    }
//    return _testDataSourceBlockArr;
//}
@end
