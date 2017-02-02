//
//  SecondViewController.h
//  TableView_Practice3
//
//  Created by 1 on 2017. 1. 26..
//  Copyright © 2017년 김흥수. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AdditionalClassDelegate;

@interface SecondViewController : UIViewController{
    
}
//-(void) executeDelegate;

@property (strong, nonatomic) NSString *receiveID;
@property (strong, nonatomic) NSIndexPath *receiveIndexPath;
@property (weak, nonatomic) IBOutlet UILabel *receiveLabel;
@property (weak, nonatomic) IBOutlet UITextField *changedName;
@property (weak, nonatomic) IBOutlet UIButton *sending;
@property (weak, nonatomic) NSString *newlyAssignedname;
//@property (weak, nonatomic) IBOutlet UITextView *changedName;

@property (nonatomic, weak) id <AdditionalClassDelegate> delegate;

- (IBAction)nameChanger:(id)sender;

@end

@protocol AdditionalClassDelegate<NSObject>

@optional

-(void) additionalPrint:(int) result;
-(void) additionalPrint2:(NSString *) result;
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
