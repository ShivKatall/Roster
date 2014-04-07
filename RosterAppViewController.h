//
//  RosterAppViewController.h
//  Roster App
//
//  Created by Cole Bratcher on 4/7/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RosterAppViewController : UIViewController <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *studentList;
@property (nonatomic, strong) NSMutableArray *teacherList;

@end
