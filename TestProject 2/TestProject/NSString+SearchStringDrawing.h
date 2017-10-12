//
//  NSString+SearchStringDrawing.h
//  Pods
//
//  Created by Xu Menghua on 2017/8/10.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (SearchStringDrawing)

// 根据宽度和label显示的属性得到按行分隔好的字符串数组
- (NSArray *)getSeparatedLinesForWidth:(CGFloat)width
                            attributes:(NSDictionary *)attributes;


// 截取当前字符串的子串，使子串加上holder小于width宽度。返回值为子串
- (NSString *)getTruncateWithMaxWidth:(CGFloat)width
                           attributes:(NSDictionary *)attributes
                          placeHolder:(NSString *)holder;

@end
