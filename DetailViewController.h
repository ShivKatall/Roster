//
//  DetailViewController.h
//  Roster App
//
//  Created by Cole Bratcher on 4/7/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "DataSource.h"

@interface DetailViewController : UIViewController

@property (nonatomic, weak) Person *person;
@property (nonatomic, weak ) DataSource *dataSource;


@end
