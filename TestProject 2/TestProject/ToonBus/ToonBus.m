//
// Created by Lijing on 2017/7/10.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import "ToonBus.h"
#import "TNWeakMutableArray.h"
#import <UIKit/UIKit.h>

NSString*const ToonBusKeyA = @"ToonBusKeyA";
NSString*const ToonBusKeyB = @"ToonBusKeyB";
NSString*const ToonBusKeyC = @"ToonBusKeyC";

@interface ToonBus()

@property (nonatomic, strong)NSMutableDictionary *keyValuesDic;
@property (nonatomic, strong)NSMutableDictionary *keyTargetsDic;

@end
@implementation ToonBus {
}


#pragma mark -public funcs

- (void)postValue:(_Nullable id)value forKey:(NSString *_Nonnull)key {

    @synchronized (self.keyValuesDic) {
        if (value == nil) {
            [self.keyValuesDic removeObjectForKey:key];
        } else {
//        向注册方发送事件
            TNWeakMutableArray *targets = self.keyTargetsDic[key];
            [targets.allObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {

                id<ToonBusDelegate> target = obj;
                if (target) {
                    [target performSelector:@selector(toonBusValueChangedForKey:latestValue:) withObject:key withObject:value];
                }
            }];

//        更新总线缓存
            self.keyValuesDic[key] = value;
        }
    }

}


- (id)valueForKey:(NSString *_Nonnull)key {
    return self.keyValuesDic[key] ;
}

//- (void)postError:(NSError *_Nonnull)error forKey:(NSString *_Nonnull)key {
//
//}

- (void)removeTarget:(NSObject *_Nonnull)target forKey:(NSString *_Nonnull)key {
    TNWeakMutableArray *array  = self.keyTargetsDic[key];
    [array removeObject:target];
}


- (void)bindTarget:(NSObject *_Nonnull)target forKey:(NSString *_Nonnull)key {

    @synchronized (self.keyTargetsDic) {

        if (self.keyTargetsDic[key] == nil) {
            self.keyTargetsDic[key] = [TNWeakMutableArray new];
        }
        TNWeakMutableArray *array  = self.keyTargetsDic[key];
        //过滤重复绑定
        __block BOOL isDuplicate = NO;
        if (array.allCount > 0) {
            [array.allObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                if(obj == target){
                    isDuplicate = YES;
                    *stop = YES;
                }
            }];
        }

        if (!isDuplicate) {
            [array addObject:target];
        }
    }
}

#pragma mark - life cycle

+(instancetype)sharedInstance{
    static dispatch_once_t oncet;
    static ToonBus *inst;
    dispatch_once(&oncet, ^{

        inst = [[super allocWithZone:NULL]init];
        inst.keyValuesDic = [NSMutableDictionary dictionary];
        inst.keyTargetsDic = [NSMutableDictionary dictionary];

    });

    return inst;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [[self class] sharedInstance];
}

+ (id)copyWithZone:(struct _NSZone *)zone {
    return [[self class] sharedInstance];
}


@end