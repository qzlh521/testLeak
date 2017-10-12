//
// Created by Lijing on 2017/7/10.
// Copyright (c) 2017 TOON. All rights reserved.
//

#import <Foundation/Foundation.h>


extern  NSString*const ToonBusKeyA;
extern  NSString*const ToonBusKeyB;
extern  NSString*const ToonBusKeyC;

@protocol ToonBusDelegate<NSObject>
@required

-(void)toonBusValueChangedForKey:(NSString *_Nullable)key latestValue:(id)value;
@end

@interface ToonBus : NSObject


+(instancetype)sharedInstance;

/*
 * post nil value will remove the item from bus
 */
-(void)postValue:(_Nullable id)value forKey:(NSString *_Nonnull)key;
-(id)valueForKey:(NSString *_Nonnull)key;
//-(void)postError:(NSError *_Nonnull)error forKey:(NSString *_Nonnull)key;
-(void)bindTarget:(NSObject *_Nonnull)target forKey:(NSString *_Nonnull)key;
-(void)removeTarget:(NSObject *_Nonnull)target forKey:(NSString *_Nonnull)key;
@end