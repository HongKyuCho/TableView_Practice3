//
//  SecondViewController.m
//  TableView_Practice3
//
//  Created by 1 on 2017. 1. 26..
//  Copyright © 2017년 김흥수. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

//-(void) executeDelegate{

//}

//-(void) additionalPrint:(int)result{
//    NSLog(@"The Answer is %i", result);
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _receiveLabel.text = _receiveID;
//    [_changedName addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)nameChanger:(id)sender {
    
    
//    [self.delegate additionalPrint:1];
//    [self.delegate additionalPrint2:@"기분좋다"];
    
//    _newlyAssignedname = _changedName.text;
    NSLog(@"%@",_changedName.text);
//    NSString *foo = someTextField.text;
//    NSData *data = [_newlyAssignedname dataUsingEncoding:NSUTF8StringEncoding];
//    NSString *fooString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@",fooString);
    
    if ([_changedName.text length] != 0) {
        [self.delegate additionalPrint2:_changedName.text];

    }
    
    
}


//- (void)textChanged:(UITextField *)textField{

//    NSLog(@"%@",_changedName.text);
//}
@end
