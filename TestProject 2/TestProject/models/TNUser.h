//
// Created by Lijing on 2017/8/8.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TNFeedItem;


@interface TNUser : NSObject
@property (nonatomic, copy)NSString *name;
@property (nonatomic, strong)TNFeedItem *feedItem;
@property (nonatomic, strong)NSArray<TNFeedItem*> *feedGroup;
@end