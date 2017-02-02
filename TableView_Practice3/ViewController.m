//
//  ViewController.m
//  TableView_Practice3
//
//  Created by 김흥수 on 2017. 1. 24..
//  Copyright © 2017년 김흥수. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *array;
    NSMutableArray *array2;
    NSMutableArray *array3;
    NSIndexPath *pathAddr;
//    id pathAddr;
//    TableViewCell *cell;
    NSString *recData;
    int sec;
    int roww;
    
    
}

//-(void) passTwoNumber:(int)one withAnother:(int)two{
//    first = one;
//    second = two;
//}
//-(void) computeAddition{
//    int addition = first + second;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    array = [[NSMutableArray alloc] initWithObjects:@"김승래",@"송범휘",@"조준용",@"김종일",@"최태욱",@"최홍준",@"김흥수",@"조홍규",@"조영민", nil];
    array2 = [[NSMutableArray alloc] initWithObjects:@"이봉석",@"박동섭",@"박재철",@"오주곤",@"김동현",nil];
    
    array3 = [[NSMutableArray alloc] initWithObjects:array,array2,array,array2, nil];
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [_tableView reloadData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0 || section == 2) {
        return [array count];
    }else if(section == 1 || section == 3){
        return [array2 count];
    }else{
        return 0;
    }
    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title = @"";
    if (section == 0) {
        title = @"모바일사업팀";
    }else if(section ==1){
        title = @"모바일운영팀";
    }else if (section == 2){
        title = @"모바일사업팀2";
    }else if (section == 3){
        title = @"모바일운영팀2";
    }
    return title;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    UIImage *image = [UIImage imageNamed:@"apple.png"];
    cell.imageView.image = image;
    
    cell.textLabel.text = [[array3 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:30];
    if (indexPath.section == 0) {
        
        if (indexPath.row <1 ) {
            cell.detailTextLabel.text =@"부장";
        }else if(indexPath.row <3){
            cell.detailTextLabel.text = @"과장";
        }else if (indexPath.row <6){
            cell.detailTextLabel.text = @"대리";
        }else{
            cell.detailTextLabel.text = @"사원";
        }
    }else if (indexPath.section == 1){
        if (indexPath.row <1 ) {
            cell.detailTextLabel.text =@"팀장";
        }else if(indexPath.row <4){
            cell.detailTextLabel.text = @"과장";
        //}else if (indexPath.row <6){
          //  cell.detailTextLabel.text = @"대리";
        }else{
            cell.detailTextLabel.text = @"사원";
        }

    }
    
    return cell;
}
*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    static NSString *simpleTableIdentifier = @"tableViewCell";
    
//    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    if (cell == nil)
//    {
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
//    }
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
//    cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];

    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
//    cell.nameLabel.text = [[array3 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
//    cell.image1.image = [UIImage imageNamed:@"apple.png"];
//    cell.image2.image = [UIImage imageNamed:@"apple2.png"];
    
    cell.nameLabel.text = [[array3 objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
//    cell.nameLabel.text = @"asd";
    cell.image1.image = [UIImage imageNamed:@"apple.png"];
    cell.image2.image =[UIImage imageNamed:@"apple2.png"];
//    if(indexPath == pathAddr){
    
//    }
    
    
    return cell;
    
}



//-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.row < 2) {
//        return 0;
//    }else {
//        return 2;
//    }
//}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    if(indexPath.row == 0){
//        return nil;
//    }else{
        return indexPath;
//    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowValue = array3[indexPath.section][indexPath.row];
    NSString *message = [[NSString alloc]initWithFormat:@"%@",rowValue];
    
    _transData = message;
//    printf("%d\n",&rowValue);
//    printf("%d\n", indexPath);
//    [self performSegueWithIdentifier:@"yourSegue" sender:self];
    sec = indexPath.section;
    roww = indexPath.row;
    
    [self performSegueWithIdentifier:@"nextView" sender:self];
//    pathAddr = &rowValue;
//    pathAddr  = indexPath;
//    NSLog(@"%@",&indexPath);
    
    
    
    //if ([rowValue isEqualToString:@"김승래"]) {
        
        
      //  }else{
        
        //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"모바일사업팀" message:message delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil, nil];
        //[alert show];
        //[tableView deselectRowAtIndexPath:indexPath animated:YES];
    //}

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"nextView"]) {
        
//        SecondViewController *destination = [segue destinationViewController];
        SecondViewController *destination = [segue destinationViewController];
        destination.receiveID = _transData;
        destination.receiveIndexPath = pathAddr;
        destination.delegate = self;
        //destination.receiveDataNo = _transDataNo;
        
        NSLog(@"ID: %@",_transData);
    }

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}


-(void) additionalPrint:(int) result {
    
    
    NSLog(@"ho");
}

//-(UITableViewCell *) returncell :(NSIndexPath *)indexPath withAnother:(NSString *)result{

//    cell.nameLabel.text = result;

//    return cell;
//}

-(void) additionalPrint2:(NSString *)result {
//    cell.nameLabel.text = result;
//    recData = result;
//    return result;
    
    [[array3 objectAtIndex:sec] replaceObjectAtIndex:roww withObject:result];
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
