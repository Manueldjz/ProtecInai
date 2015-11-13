//
//  InicioTableVC.h
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InicioTableVC : UITableViewController

@property(nonatomic, retain) NSMutableArray *selectedData;
@property (weak, nonatomic) IBOutlet UILabel *resultLbl;

- (IBAction)caculate:(id)sender;

@end
