//
// Created by Lijing on 2017/7/10.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import "TNWeakMutableArray.h"


@interface TNWeakMutableArray ()
@property (nonatomic, strong) NSPointerArray  *pointerArray;
@end
@implementation TNWeakMutableArray {

}

- (instancetype)init {

    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.pointerArray = [NSPointerArray weakObjectsPointerArray];
}

- (void)addObject:(id)object {
    [self.pointerArray addPointer:(__bridge void *)(object)];
}

- (void)removeObject:(id)object {
    @synchronized (self.pointerArray) {
        int idx = -1;
        for (int i = 0; i < self.allCount; i++) {
            NSObject *item = [self objectAtWeakMutableArrayIndex:i];
            if (nil != item && item == object) {
                idx = i;
                break;
            }
        }
        if (idx >= 0) {
            [self.pointerArray removePointerAtIndex:idx];
        }
    }
}


- (id)objectAtWeakMutableArrayIndex:(NSUInteger)index {
    return [self.pointerArray pointerAtIndex:index];
}

#pragma mark - 重写getter方法
@synthesize allObjects = _allObjects;
- (NSArray *)allObjects {
    return self.pointerArray.allObjects;
}

@synthesize usableCount = _usableCount;
- (NSInteger)usableCount {
    return self.pointerArray.allObjects.count;
}

@synthesize allCount = _allCount;
- (NSInteger)allCount {
    return self.pointerArray.count;
}

@end