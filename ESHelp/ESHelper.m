//
//  ESHelper.m
//  buyer
//
//  Created by quanzhizu on 16/3/16.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "ESHelper.h"



@implementation ESHelper

+(BOOL)notNull:(id)object{
    
    if (object != nil && (![object isKindOfClass:[NSNull class]]) && object != NULL) {
        return YES;
    }
    return NO;
    
}

+(BOOL)isNull:(id)object{
    if (object == nil || object == NULL || [object isKindOfClass:[NSNull class]] || object == Nil) {
        return  YES;
    }
    return NO;
}



+(NSString *)getLoginNationCode{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    return [def objectForKey:@"loginNationCode"];
}
+(void)setLoginNationCode:(NSString *)code{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:code forKey:@"loginNationCode"];
}


+(NSString *)getLoginNationName{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    return [def objectForKey:@"loginNationName"];
}
+(void)setLoginNationName:(NSString *)code{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:code forKey:@"loginNationName"];
}

+(NSString *)getSigWithKey:(NSInteger)key{
    
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    return [def objectForKey:[NSString stringWithFormat:@"sig%@",@(key)]];
    
}
+(void)setSig:(NSString *)sig withKey:(NSInteger)key{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:sig forKey:[NSString stringWithFormat:@"sig%@",@(key)]];
}



+(void)setToken:(NSString *)token{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:token forKey:@"UserToken"];
    
    [def synchronize];
    
}
+(NSString *)getToken{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    return [def objectForKey:@"UserToken"];
}
+(void)removeToken{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def removeObjectForKey:@"UserToken"];
}


+(int)convertToInt:(NSString*)strtemp {
    
    int strlength = 0;
    char* p = (char*)[strtemp cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[strtemp lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return (strlength+1)/2;
    
}

+(NSString *)getNnmberFromString:(NSString *)str{
    if ([ESHelper isNull:str]) {
        return @"86";
    }
    NSCharacterSet* nonDigits =[[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    int remainSecond =[[str stringByTrimmingCharactersInSet:nonDigits] intValue];
    return [NSString stringWithFormat:@"%d",remainSecond];
}


+(void)setBeautyValue:(NSNumber *)value{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:value forKey:@"onBeautyChanged"];
    
    [def synchronize];
    
}
+(NSNumber *)getBeautyValue{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    return [def objectForKey:@"onBeautyChanged"];
}


+(BOOL)isPureNumandCharacters:(NSString *)string
{
    string = [string stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    if(string.length > 0)
    {
        return NO;
    }
    return YES;
}


//+(BOOL)isValidateEmail:(NSString
//                        *)email
//
//{
//    
//    NSString *emailRegex = @"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?";
//    
//    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",emailRegex];
//    
//    return[emailTest evaluateWithObject:email];
//    
//}


@end
