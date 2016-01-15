//
//  StringCalculatorKataTests.m
//  StringCalculatorKataTests
//
//  Created by Denys Khlivnyy on 1/15/16.
//  Copyright © 2016 Denys Khlivnyy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StringCalculator.h"

@interface StringCalculatorKataTests : XCTestCase

@end

@implementation StringCalculatorKataTests

StringCalculator *stringCalculator;

- (void)setUp {
    [super setUp];
    stringCalculator = [[StringCalculator alloc] init];
    
}

- (void)tearDown {
    [super tearDown];
}

- (void)testEmptyStringReturnZero {
    NSInteger result = [stringCalculator add: @""];
    NSInteger zero = 0;
    XCTAssertEqual(zero, result);
}

- (void)testAddSingleNumberReturnsNumbers {
    NSInteger result = [stringCalculator add: @"1"];
    NSInteger expected = 1;
    XCTAssertEqual(expected, result);
    
}

- (void)testAddTwoCommaDelimitedNumbersReturnSum {
    NSInteger result = [stringCalculator add: @"1, 1"];
    NSInteger expected = 2;
    XCTAssertEqual(expected, result);
    
}




@end
