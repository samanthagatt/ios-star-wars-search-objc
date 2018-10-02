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
    // NSURL *baseURL = [[NSURL alloc] initWithString:baseURLString];
    // convenience method that allocates and initializes
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    NSURLComponents *components = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    
    NSURLQueryItem *searchItem = [NSURLQueryItem queryItemWithName:@"search" value:searchTerm];
    [components setQueryItems:@[searchItem]];
    NSURL *url = [components URL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *r, NSError *error)
      {
          if (error) {
              NSLog(@"Error fetching data %@", error);
              completion(nil, error);
              return;
          }
          
          NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
          if (![dictionary isKindOfClass:[NSDictionary class]]) {
              NSLog(@"JSON was not a dictionary");
              completion(nil, [[NSError alloc] init]);
              return;
          }
          
          // NSArray *personDictionaries = [dictionary objectForKey:@"results"];
          // same as
          NSArray *personDictionaries = dictionary[@"results"];
          NSMutableArray *people = [[NSMutableArray alloc] init];
          for (NSDictionary *dictionary in personDictionaries) {
              LSCPerson *person = [[LSCPerson alloc] initWithDictionary:dictionary];
              [people addObject:person];
          }
          completion(people, nil);
      }] resume];
}

static NSString * const baseURLString = @"https://swapi.co/api/people";

@end
