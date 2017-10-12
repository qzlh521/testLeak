//
// Created by Lijing on 2017/7/4.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import "TesView.h"


@implementation TesView {

}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor brownColor];

        [[ToonBus sharedInstance] bindTarget:self forKey:ToonBusKeyA];
    }

    return self;
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(200, 200);
}

- (void)toonBusValueChangedForKey:(NSString *)key latestValue:(id)value {
    NSLog(@"%@  \n >>get message from key: %@ value: %@",self, key, value);


}


@end