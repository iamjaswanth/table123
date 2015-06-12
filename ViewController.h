//
//  ViewController.h
//  table123
//
//  Created by jaswanth on 12/06/15.
//  Copyright (c) 2015 jaswanth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{

    IBOutlet UITableView *tableview;
    NSMutableArray *dataArray;
    
    
}


@end

