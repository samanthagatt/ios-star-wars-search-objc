//
//  LSCPersonSearchTableViewController.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSCPersonSearchTableViewController.h"
#import "LSCPersonController.h"
#import "LSCPersonTableViewCell.h"

@interface LSCPersonSearchTableViewController ()

@property (nonatomic, copy) LSCPersonController *personController;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSCPersonSearchTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _personController = [[LSCPersonController alloc] init];
    [[self searchBar] setDelegate:self];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.personController searchForPeopleWithSearchTerm:searchBar.text completion:^(NSArray *people, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self setPeople:people];
            [[self tableView] reloadData];
        });
    }];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self people] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSCPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];

    [cell setPerson:[[self people] objectAtIndex:[indexPath row]]];
    [cell updateViews];
    
    return cell;
}

@end
