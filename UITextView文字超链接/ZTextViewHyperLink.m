//
//  ZTextViewHyperLink.m
//  UITextView文字超链接
//
//  Created by imac on 2017/2/24.
//  Copyright © 2017年 imac. All rights reserved.
//

#import "ZTextViewHyperLink.h"

@implementation ZTextViewHyperLink


/**
 UITextView文字超链接

 @param allStr 整个字符串
 @param changeStr 需要更改为超链接的部分字符
 @param changeStrColor 超链接字符颜色
 @param style 超链接字符的样式
 @return 返回的字符串
 */
+(NSMutableAttributedString *)AllString:(NSString *)allStr ChangeString:(NSString *)changeStr ChangeStrColor:(UIColor *)changeStrColor StrStyle:(NSInteger)style {

    NSString *str = [NSString stringWithFormat:@"%@", allStr];
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:str]; // assume string exists
    NSRange urlRange = [str rangeOfString:changeStr];
    [string addAttribute:NSLinkAttributeName
                   value:changeStr
                   range:urlRange];
    [string addAttribute:NSForegroundColorAttributeName
                   value:changeStrColor
                   range:urlRange];
    [string addAttribute:NSUnderlineStyleAttributeName
                   value:@(style)
                   range:urlRange];
    [string endEditing];

    
    return string;
    
}







@end
