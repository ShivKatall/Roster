//
//  PersonCell.h
//  Roster App
//
//  Created by Cole Bratcher on 4/8/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *personImageView;
@property (nonatomic, weak) IBOutlet UILabel *personLabel;

@end
