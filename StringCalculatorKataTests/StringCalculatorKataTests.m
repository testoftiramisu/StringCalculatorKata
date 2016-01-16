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

- (void)testAddMultipleCommaDelimitedNumbersReturnSum {
    NSInteger result = [stringCalculator add: @"1, 2,,, 3"];
    NSInteger expected = 6;
    XCTAssertEqual(expected, result);
}

- (void)testAddNewLineDelimitedNumbersReturnSum {
    NSInteger result = [stringCalculator add: @"3\n\n3\n3"];
    NSInteger expected = 9;
    XCTAssertEqual(expected, result);
}

- (void)testUserSpecifiedDelimitedNumbersReturnSum {
    NSInteger result = [stringCalculator add: @"!2@2#2$2%2^2&2*2(2)2,2_2=2+2:2;2'2.2/2?2`2~2\"2|2{2[2}2]2<2>2"];
    NSInteger expected = 60;
    XCTAssertEqual(expected, result);
}

- (void)testAddSingleNegativeNumberThrowsAnException {
    XCTAssertThrowsSpecificNamed([stringCalculator add: @"-1, 4"], NSException, NSInvalidArgumentException);
}


@end
