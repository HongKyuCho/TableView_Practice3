//
//  ViewController.h
//  TableView_Practice3
//
//  Created by 김흥수 on 2017. 1. 24..
//  Copyright © 2017년 김흥수. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, AdditionalClassDelegate>{
    
}

//-(void) passTwoNumber:(int) one withAnother:(int) two;
//-(void) computeAddition;


@property (weak,nonatomic) NSString *transData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end



