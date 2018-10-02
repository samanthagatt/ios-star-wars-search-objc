//
//  LSCPersonSearchTableViewController.h
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSCPersonSearchTableViewController : UITableViewController <UISearchBarDelegate>

@property NSArray *people;

@end

NS_ASSUME_NONNULL_END
