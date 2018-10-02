//
//  LSCPersonTableViewCell.h
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSCPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSCPersonTableViewCell : UITableViewCell

- (void)updateViews;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthYearLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *eyeColorLabel;

@property (nonatomic, strong) LSCPerson *person;

@end

NS_ASSUME_NONNULL_END
