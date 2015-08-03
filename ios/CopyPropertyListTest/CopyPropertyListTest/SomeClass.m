//
//  SomeClass.m
//  CopyPropertyListTest
//
//  Created by Xiao Xiao on 8/2/15.
//  Copyright (c) 2015 Xiao Xiao. All rights reserved.
//

#import "SomeClass.h"
@import ObjectiveC;

@implementation SomeClass

- (void)iVarAccess
{
    NSLog(@"Start normal access");
    NSLog(@"str %@", _str);
    NSLog(@"num %@", _num);
    NSLog(@"intNum %d", _intNum);
    NSLog(@"floatNum %f", _floatNum);
    NSLog(@"obj %@", _obj);
}

- (void)propertyAccess
{
    NSLog(@"Start normal access");
    NSLog(@"str %@", self.str);
    NSLog(@"num %@", self.num);
    NSLog(@"intNum %d", self.intNum);
    NSLog(@"floatNum %f", self.floatNum);
    NSLog(@"obj %@", self.obj);
}
- (void)runtimeAccess
{
    unsigned int propertyCount;
    objc_property_t *propertyList;
    propertyList = class_copyPropertyList([SomeClass class], &propertyCount);

    NSLog(@"Start runtime Access");

    for (unsigned int i = 0; i < propertyCount; i++) {
        objc_property_t property = propertyList[i];
        const char * propertyName = property_getName(property);
        id object = [self valueForKey:[NSString stringWithUTF8String:propertyName]];
        NSLog(@"%s %@", propertyName, object);
    }

    free(propertyList);
}

@end
