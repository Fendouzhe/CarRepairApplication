//
//  UIFont+Font.m
//  ShuangKuai-iOS
//
//  Created by 宇中 on 2018/6/7.
//  Copyright © 2018年 com.shuangkuaimai. All rights reserved.
//

#import "UIFont+Font.h"
#import <objc/message.h>

@implementation UIFont (Font)

+ (void)load{
    
    Method meth0 = class_getClassMethod([UIFont class], @selector(systemFontOfSize:));
    Method methd1 = class_getClassMethod([UIFont class], @selector(LR_systemFontOfSize:));
    method_exchangeImplementations(meth0, methd1);

    Method method2 = class_getClassMethod([UIFont class], @selector(boldSystemFontOfSize:));
    Method method3 = class_getClassMethod([UIFont class], @selector(LR_boldSystemFontOfSize:));
    method_exchangeImplementations(method2, method3);
    
}


+ (instancetype)LR_systemFontOfSize:(CGFloat)fontSize{
    
    CGFloat with = [UIScreen mainScreen].bounds.size.width;
    if (with == 375) {
        fontSize += 1.5f;
    }else if (with == 414){
        fontSize += 3.0f;
    }
    UIFont *font = [UIFont LR_boldSystemFontOfSize:fontSize];
    return font;
}

+ (instancetype)LR_boldSystemFontOfSize:(CGFloat)fontSize{
    
    CGFloat with = [UIScreen mainScreen].bounds.size.width;
    if (with == 375) {
        fontSize += 1.5f;
    }else if (with == 414){
        fontSize += 3.0f;
    }
    UIFont *font = [UIFont LR_boldSystemFontOfSize:fontSize];
    return font;
}

@end
