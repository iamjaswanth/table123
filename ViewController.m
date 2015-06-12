//
//  ViewController.m
//  table123
//
//  Created by jaswanth on 12/06/15.
//  Copyright (c) 2015 jaswanth. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    dataArray = [[NSMutableArray alloc]initWithObjects:@"Jaswanth",@"Nikhil",@"Teja", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellidentifer = @"testcell1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifer];
    
    if (cell == nil) {
        
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifer];
        
    }
    
    UILabel *lbl =(UILabel *)[cell.contentView viewWithTag:99];
    lbl.text =[dataArray objectAtIndex:indexPath.row];
    
    return cell;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Family" ;
}

    



@end
