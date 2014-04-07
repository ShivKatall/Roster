//
//  RosterAppViewController.m
//  Roster App
//
//  Created by Cole Bratcher on 4/7/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "RosterAppViewController.h"
#import "Person.h"
#import "DetailViewController.h"

@interface RosterAppViewController ()

@property (weak, nonatomic) IBOutlet UITableView *rosterTableView;

@end

@implementation RosterAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.rosterTableView.dataSource = self;
    self.studentList = [[NSMutableArray alloc] init];
    self.teacherList = [[NSMutableArray alloc] init];
    
    Person *coleBratcher = [[Person alloc] init];
    coleBratcher.personType = @"Student";
    coleBratcher.firstName = @"Cole";
    coleBratcher.lastName = @"Bratcher";
    [self.studentList addObject:coleBratcher];
    
    Person *johnClem = [[Person alloc] init];
    johnClem.personType = @"Teacher";
    johnClem.firstName = @"John";
    johnClem.lastName = @"Clem";
    [self.teacherList addObject:johnClem];
    
    Person *bradJohnson = [[Person alloc] init];
    bradJohnson.personType = @"Teacher";
    bradJohnson.firstName = @"Brad";
    bradJohnson.lastName = @"Johnson";
    [self.teacherList addObject:bradJohnson];
    
    Person *laurenLee = [[Person alloc] init];
    laurenLee.personType = @"Student";
    laurenLee.firstName = @"Lauren";
    laurenLee.lastName = @"Lee";
    [self.studentList addObject:laurenLee];
    
    Person *taylorPotter = [[Person alloc] init];
    taylorPotter.personType = @"Student";
    taylorPotter.firstName = @"Taylor";
    taylorPotter.lastName = @"Potter";
    [self.studentList addObject:taylorPotter];
    
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (section == 0)
    {
        return self.teacherList.count;
    } else {
        return self.studentList.count;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personCell" forIndexPath:indexPath];
        Person *person = [self.teacherList objectAtIndex:indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName ];
        return cell;
    } else
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personCell" forIndexPath:indexPath];
        Person *person = [self.studentList objectAtIndex:indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName ];
        return cell;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.rosterTableView indexPathForSelectedRow];
    
    if (indexPath.section == 0)
    {   if ([segue.identifier isEqualToString:@"showDetailSegue"]) {
            DetailViewController *destination = segue.destinationViewController;
            Person *person = [self.teacherList objectAtIndex:[self.rosterTableView indexPathForSelectedRow].row];
            destination.person = person;
        }
    } else {
        if ([segue.identifier isEqualToString:@"showDetailSegue"]) {
            DetailViewController *destination = segue.destinationViewController;
            Person *person = [self.studentList objectAtIndex:[self.rosterTableView indexPathForSelectedRow].row];
            destination.person = person;
        }
    }
}

@end
