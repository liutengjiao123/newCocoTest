//
//  NSString+Tool.m
//  OCCategory
//
//  Created by 刘清 on 15/7/31.
//  Copyright (c) 2015年 LiuQing. All rights reserved.
//

#import "NSString+Tool.h"

//添加头文件
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Tool)

//加密算法的实现
- (NSString *)md5
{
    //换成想加密的字符串
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}

//-(NSString *)md5:(NSString *)str {
//    const char *cStr = [str UTF8String];
//    unsigned char result[16];
//    CC_MD5( cStr, (unsigned int)strlen(cStr), result );
//    return [NSString stringWithFormat:            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
//            result[0], result[1], result[2], result[3],
//            result[4], result[5], result[6], result[7],
//            result[8], result[9], result[10], result[11],
//            result[12], result[13], result[14], result[15]
//            ];
//}







@end
