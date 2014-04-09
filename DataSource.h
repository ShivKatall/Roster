//
//  DataSource.h
//  Roster App
//
//  Created by Cole Bratcher on 4/9/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *studentList;
@property (nonatomic, strong) NSMutableArray *teacherList;

-(instancetype)initWithStudentsAndTeachers;
-(void)sortByLastName;

@end
