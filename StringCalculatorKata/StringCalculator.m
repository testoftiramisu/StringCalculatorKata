//
//  StringCalculator.m
//  StringCalculatorKata
//
//  Created by Denys Khlivnyy on 1/15/16.
//  Copyright © 2016 Denys Khlivnyy. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

-(NSInteger)add:(NSString *)numbers{
    NSInteger result = 0;
    
    if ([numbers length] == 0) {
        return result = 0;
    }
    
    NSArray *array= [[NSArray alloc] init];
    array = [numbers componentsSeparatedByString:@","];
    
    for (NSString * number in array) {
        result += [number integerValue];
    }
    
    return result;
}

@end
