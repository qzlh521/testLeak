//
// Created by Lijing on 2017/8/8.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TNFeedItem : NSObject
@property (nonatomic, copy)NSString * feedID;
@property (nonatomic, copy)NSString * icon;
@property (nonatomic, assign)int age;
@property (nonatomic, assign)BOOL isLeader;
@property (nonatomic, strong)NSArray<TNFeedItem*> *feedGroup;
@end