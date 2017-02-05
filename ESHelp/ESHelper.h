//
//  ESHelper.h
//  buyer
//
//  Created by quanzhizu on 16/3/16.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ESHelper : NSObject

+(BOOL)notNull:(id)object;

+(BOOL)isNull:(id)object;

+(NSString *)getLoginNationCode;
+(void)setLoginNationCode:(NSString *)code;

+(NSString *)getLoginNationName;
+(void)setLoginNationName:(NSString *)code;

+(NSString *)getSigWithKey:(NSInteger)key;
+(void)setSig:(NSString *)sig withKey:(NSInteger)key;


+(void)setToken:(NSString *)token;
+(NSString *)getToken;
+(void)removeToken;

+(int)convertToInt:(NSString*)strtemp;

+(NSString *)getNnmberFromString:(NSString *)str;

+(void)setBeautyValue:(NSNumber *)value;
+(NSNumber *)getBeautyValue;

+(BOOL)isPureNumandCharacters:(NSString *)string;

//+(BOOL)isValidateEmail:(NSString *)email;



@end
