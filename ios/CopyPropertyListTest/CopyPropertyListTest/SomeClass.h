//
//  SomeClass.h
//  CopyPropertyListTest
//
//  Created by Xiao Xiao on 8/2/15.
//  Copyright (c) 2015 Xiao Xiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SomeClass : NSObject

@property (nonatomic, retain) NSString *str;
@property (nonatomic, retain) NSNumber *num;
@property (nonatomic, assign) int intNum;
@property (nonatomic, assign) float floatNum;
@property (nonatomic, assign) NSObject *obj;

- (void)iVarAccess;

- (void)propertyAccess;

- (void)runtimeAccess;

@end
