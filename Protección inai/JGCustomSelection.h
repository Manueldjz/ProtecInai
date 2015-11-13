//
//  SelectDeveloper.h
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListCell.h"
#import "SelectedCell.h"

@protocol JGCustomSelectionDelegate <NSObject>
@required
-(void)JGCustomSelectionSelectedValues:(NSArray *)selectedValues;

@end // end of delegate protocol


@interface JGCustomSelection : UIViewController<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UITableView *contentTableView1;
@property (weak, nonatomic) IBOutlet UITableView *contentTableView2;
@property (weak, nonatomic) IBOutlet UITableView *contentTableView3;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@property (weak, nonatomic) IBOutlet UICollectionView *selectedCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedCollectionHeightConstrain;

@property (retain, nonatomic) NSMutableArray *selectedValues;
@property (retain, nonatomic) NSMutableArray *selectedValuesA;
@property (retain, nonatomic) NSMutableArray *selectedValuesB;
@property (retain, nonatomic) NSMutableArray *selectedValuesC;

@property (retain, nonatomic) NSMutableArray *tableViewDataArray1;
@property (retain, nonatomic) NSMutableArray *tableViewDataArray2;
@property (retain, nonatomic) NSMutableArray *tableViewDataArray3;

@property (nonatomic, weak) id<JGCustomSelectionDelegate> delegate;

- (IBAction)segmentControl:(id)sender;

- (IBAction)doneButtonAction:(id)sender;

- (IBAction)terminarCalculo:(id)sender;

- (void)dismiss;

@end
