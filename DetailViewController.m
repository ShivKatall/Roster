//
//  DetailViewController.m
//  Roster App
//
//  Created by Cole Bratcher on 4/7/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "DetailViewController.h"
#import "Person.h"



@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;

@end

@implementation DetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.typeLabel.text = self.person.personType;
    self.firstNameLabel.text = self.person.firstName;
    self.lastNameLabel.text = self.person.lastName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
