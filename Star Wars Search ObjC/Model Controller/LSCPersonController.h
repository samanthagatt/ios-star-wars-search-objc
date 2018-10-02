//
//  LSCPersonController.h
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 9/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSCPersonController : NSObject

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm completion:(void (^)(NSArray *people, NSError *))completion;

@end

NS_ASSUME_NONNULL_END
