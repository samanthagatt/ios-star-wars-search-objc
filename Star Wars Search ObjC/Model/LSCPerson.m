//
//  LSCPerson.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 9/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSCPerson.h"

@implementation LSCPerson

- (instancetype)initWithName:(NSString *)name birthYear:(NSString *)birthYear height:(NSString *)height eyeColor:(NSString *)eyeColor
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _birthYear = [birthYear copy];
        _height = [height copy];
        _eyeColor = [eyeColor copy];
    }
    return self;
}

@end
