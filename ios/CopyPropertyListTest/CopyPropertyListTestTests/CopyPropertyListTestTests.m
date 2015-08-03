//
//  CopyPropertyListTestTests.m
//  CopyPropertyListTestTests
//
//  Created by Xiao Xiao on 8/2/15.
//  Copyright (c) 2015 Xiao Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "SomeClass.h"

@interface CopyPropertyListTestTests : XCTestCase

@end

@implementation CopyPropertyListTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testiVarAccess {
    // This is an example of a functional test case.
    [self measureBlock:^{
        SomeClass *obj = [SomeClass new];
        for (int i = 0; i < 10000; i++) {
            [obj iVarAccess];
        }

        XCTAssert(YES, @"Pass");
    }];
}

- (void)testPropertyAccess {
    // This is an example of a functional test case.
    [self measureBlock:^{
        SomeClass *obj = [SomeClass new];
        for (int i = 0; i < 10000; i++) {
            [obj propertyAccess];
        }

        XCTAssert(YES, @"Pass");
    }];
}

- (void)testRuntimeAccess {
    [self measureBlock:^{
        SomeClass *obj = [SomeClass new];
        for (int i = 0; i < 10000; i++) {
            [obj runtimeAccess];
        }
        XCTAssert(YES, @"Pass");
    }];
}

@end
