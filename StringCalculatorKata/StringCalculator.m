//
//  StringCalculator.m
//  StringCalculatorKata
//
//  Created by Denys Khlivnyy on 1/15/16.
//  Copyright © 2016 Denys Khlivnyy. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (void)checkForNegative:(NSString *)numbers {
    NSMutableArray  *chars = [NSMutableArray array];
    [numbers enumerateSubstringsInRange: NSMakeRange(0, [numbers length])
                                options: NSStringEnumerationByComposedCharacterSequences
                             usingBlock: ^(NSString *inSubstring, NSRange inSubstringRange, NSRange inEnclosingRange, BOOL *outStop) {
                                 [chars addObject: inSubstring];
                             }];
    
    for (NSString *character in chars) {
        if ([character isEqual: @"-"]) {
            [NSException raise:NSInvalidArgumentException format: @"Numbers should be positive."];
        }
        
    }
}

- (NSString *)replaceNonCommaDelimiters:(NSString *)numbers {
    NSCharacterSet *nonComma = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    numbers = [[numbers componentsSeparatedByCharactersInSet: nonComma] componentsJoinedByString: @","];
    return numbers;
}

-(NSInteger)add:(NSString *)numbers{
    NSInteger result = 0;
    
    if ([numbers length] == 0) {
        return result;
    }
    
    [self checkForNegative:numbers];
    numbers = [self replaceNonCommaDelimiters:numbers];
    
    NSArray *array= [[NSArray alloc] init];
    array = [numbers componentsSeparatedByString:@","];
    
    for (NSString * number in array) {
        result += [number integerValue];
    }
    
    return result;
}

@end
