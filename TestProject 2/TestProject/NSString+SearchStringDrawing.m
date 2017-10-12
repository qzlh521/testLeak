//
//  NSString+SearchStringDrawing.m
//  Pods
//
//  Created by Xu Menghua on 2017/8/10.
//
//

#import "NSString+SearchStringDrawing.h"
#import <CoreText/CoreText.h>

@implementation NSString (SearchStringDrawing)

- (NSArray *)getSeparatedLinesForWidth:(CGFloat)width
                            attributes:(NSDictionary *)attributes
{
    NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:self attributes:attributes];
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef)attStr);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0,0,width,100000));
    CTFrameRef frame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, NULL);
    CFRelease(path);
    CFRelease(frameSetter);
    NSArray *lines = (__bridge NSArray *)CTFrameGetLines(frame);
    CFRelease(frame);
    NSMutableArray *linesArray = [[NSMutableArray alloc]init];
    for (id line in lines) {
        CTLineRef lineRef = (__bridge CTLineRef )line;
        CFRange lineRange = CTLineGetStringRange(lineRef);
        NSRange range = NSMakeRange(lineRange.location, lineRange.length);
        NSString *lineString = [self substringWithRange:range];
        [linesArray addObject:lineString];
    }
    return linesArray;
}

- (NSString *)getTruncateWithMaxWidth:(CGFloat)width
                           attributes:(NSDictionary *)attributes
                          placeHolder:(NSString *)holder
{
    NSString *tempString = [self copy];
//    NSString * tempString = @"aa";
//    int i = 1000000;
//    while (i) {
//        @autoreleasepool{
//          __block   NSObject * obj = [NSObject new];
//        tempString = [tempString stringByReplacingCharactersInRange:NSMakeRange(0, 0) withString:@""];
//        i--;
//        }
//    }
    
    
    return tempString;
}

@end
