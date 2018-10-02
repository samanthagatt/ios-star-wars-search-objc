//
//  LSCPersonController.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 9/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSCPersonController.h"
#import "LSCPerson.h"

@implementation LSCPersonController

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm completion:(void (^)(NSArray *people, NSError *))completion
{
    
}

static NSString * const baseURLString = @"https://swapi.co/api/people";

@end
