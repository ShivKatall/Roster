//
//  DataSource.m
//  Roster App
//
//  Created by Cole Bratcher on 4/9/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "DataSource.h"
#import "Person.h"
#import "PersonCell.h"

@implementation DataSource

-(instancetype)initWithStudentsAndTeachers
{
    self = [super init];
    
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

    return self;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(void)sortByLastName
{
    NSSortDescriptor *lastNameSortDescriptor = [[NSSortDescriptor alloc]
                                                initWithKey:@"lastName" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    self.teacherList = [[self.teacherList sortedArrayUsingDescriptors:@[lastNameSortDescriptor]]mutableCopy];
    self.studentList = [[self.studentList sortedArrayUsingDescriptors:@[lastNameSortDescriptor]]mutableCopy];
    
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


-(PersonCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personCell" forIndexPath:indexPath];
        Person *person = [self.teacherList objectAtIndex:indexPath.row];
        cell.personLabel.text = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName ];
        cell.personImageView.layer.cornerRadius = 22;
        cell.personImageView.layer.masksToBounds = YES;
        cell.personImageView.image = person.image;
        return cell;
    } else
    {
        PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personCell" forIndexPath:indexPath];
        Person *person = [self.studentList objectAtIndex:indexPath.row];
        cell.personLabel.text = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName ];
        cell.personImageView.layer.cornerRadius = 22;
        cell.personImageView.layer.masksToBounds = YES;
        cell.personImageView.image = person.image;
        return cell;
    }
}


@end
