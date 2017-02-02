//
//  TableViewCell.h
//  TableView_Practice3
//
//  Created by 조홍규 on 2017. 1. 31..
//  Copyright © 2017년 김흥수. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
