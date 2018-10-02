//
//  LSCPersonTableViewCell.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSCPersonTableViewCell.h"

@implementation LSCPersonTableViewCell

- (void)updateViews
{
    if (!self.person) { return; }
    self.nameLabel.text = self.person.name;
    self.birthYearLabel.text = [[NSString alloc] initWithFormat:@"Born %@", self.person.birthYear];
    self.heightLabel.text = [[NSString alloc] initWithFormat:@"%@ cm", self.person.height];
    self.eyeColorLabel.text = [[NSString alloc] initWithFormat:@"%@ eyes", [self.person.eyeColor capitalizedString]];
}

@end
