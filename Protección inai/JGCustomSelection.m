//
//  SelectDeveloper.m
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "JGCustomSelection.h"
#import "UIViewController+ENPopUp.h"
#import "popUpViewController.h"

@interface JGCustomSelection (){
}

@end

@implementation JGCustomSelection

@synthesize selectedValues,tableViewDataArray1,tableViewDataArray2,tableViewDataArray3;
//@synthesize ,selectedValuesA,selectedValuesB,selectedValuesC;
- (void)viewDidLoad {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dismiss) name:@"dismissPopUp" object:nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    selectedValues = [@[] mutableCopy];
    /*
    selectedValuesA = [@[] mutableCopy];
    selectedValuesB = [@[] mutableCopy];
    selectedValuesC = [@[] mutableCopy];
    */
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    self.selectedCollectionHeightConstrain.constant = 0;
    if (selectedValues.count > 0) {
        [self animateSelectedCollectionView];
    }
    /*
    if (selectedValuesA.count > 0) {
        [self animateSelectedCollectionView];
    }
    if (selectedValuesB.count > 0) {
        [self animateSelectedCollectionView];
    }
    if (selectedValuesC.count > 0) {
        [self animateSelectedCollectionView];
    }
    */
    NSLog(@" viewDidLoad %li",_segment.selectedSegmentIndex);
    NSLog(@" viewDidLoad tv 1 %li",[tableViewDataArray1 count]);
    NSLog(@" viewDidLoad tv 2 %li",[tableViewDataArray2 count]);
    NSLog(@" viewDidLoad tv 3 %li",[tableViewDataArray3 count]);
    [_contentTableView1 setHidden:NO];
    [_contentTableView2 setHidden:YES];
    [_contentTableView3 setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - TableView Delegates

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if ([tableView isEqual:_contentTableView1]) {
        return tableViewDataArray1.count;
    }
    if ([tableView isEqual:_contentTableView2]) {
        return tableViewDataArray2.count;
    }
    if ([tableView isEqual:_contentTableView3]) {
        return tableViewDataArray3.count;
    }
    else {
        return 0;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([tableView isEqual:_contentTableView1]) {
        ListCell *cell = (ListCell *)[tableView dequeueReusableCellWithIdentifier:@"ListCell"];
        NSDictionary *developer = [tableViewDataArray1 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        [cell layoutIfNeeded];
        
        NSInteger height = cell.cellHeightGuider.frame.origin.y+1;
        
        return 50;
    }
    if ([tableView isEqual:_contentTableView2]) {
        ListCell *cell = (ListCell *)[tableView dequeueReusableCellWithIdentifier:@"ListCell"];
        NSDictionary *developer = [tableViewDataArray2 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        [cell layoutIfNeeded];
        
        NSInteger height = cell.cellHeightGuider.frame.origin.y+1;
        
        return 50;
    }
    if ([tableView isEqual:_contentTableView3]) {
        ListCell *cell = (ListCell *)[tableView dequeueReusableCellWithIdentifier:@"ListCell"];
        NSDictionary *developer = [tableViewDataArray3 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        [cell layoutIfNeeded];
        
        NSInteger height = cell.cellHeightGuider.frame.origin.y+1;
        
        return 50;
    }
    else {
        return 10;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ListCell *cell = (ListCell *)[tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    if ([tableView isEqual:_contentTableView1]) {
        
        // this is where you set your color view and text color selected
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor = [UIColor colorWithRed:30/255.0
                                                          green:90/255.0
                                                           blue:152/255.0
                                                          alpha:0.5];
        cell.selectedBackgroundView =  customColorView;
        cell.devName.highlightedTextColor = [UIColor whiteColor];
        
        NSDictionary *developer = [tableViewDataArray1 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        cell.imageView.image=[UIImage imageNamed:@"iconoEstandar"];
        cell.imageView.frame = CGRectMake(0, 0, 30, 30);
        
        return cell;
    }
    if ([tableView isEqual:_contentTableView2]) {
        
        // this is where you set your color view and text color selected
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor = [UIColor colorWithRed:30/255.0
                                                          green:90/255.0
                                                           blue:152/255.0
                                                          alpha:0.5];
        cell.selectedBackgroundView =  customColorView;
        cell.devName.highlightedTextColor = [UIColor whiteColor];
        
        NSDictionary *developer = [tableViewDataArray2 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        cell.imageView.image=[UIImage imageNamed:@"iconoSensible"];
        cell.imageView.frame = CGRectMake(0, 0, 30, 30);
        
        return cell;
    }
    if ([tableView isEqual:_contentTableView3])  {
        
        // this is where you set your color view and text color selected
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor = [UIColor colorWithRed:30/255.0
                                                          green:90/255.0
                                                           blue:152/255.0
                                                          alpha:0.5];
        cell.selectedBackgroundView =  customColorView;
        cell.devName.highlightedTextColor = [UIColor whiteColor];
        
        NSDictionary *developer = [tableViewDataArray3 objectAtIndex:indexPath.row];
        cell.devName.text = developer[@"name"];
        cell.devSubName.text = developer[@"company"];
        cell.imageView.image=[UIImage imageNamed:@"iconoEspecial"];
        cell.imageView.frame = CGRectMake(0, 0, 30, 30);
        
        return cell;
    }
    else {
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([tableView isEqual:_contentTableView1]) {
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoEstandarBlanco"];
        if (![selectedValues containsObject:[tableViewDataArray1 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray1 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray1 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
    }
    if ([tableView isEqual:_contentTableView2]) {
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoSensibleBlanco"];
        if (![selectedValues containsObject:[tableViewDataArray2 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray2 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray2 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
    }
    if ([tableView isEqual:_contentTableView3]) {
        
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoEspecialBlanco"];
        if (![selectedValues containsObject:[tableViewDataArray3 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray3 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray3 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([tableView isEqual:_contentTableView1]) {
        
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoEstandar"];
        /*
        if (![selectedValues containsObject:[tableViewDataArray1 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray1 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray1 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
        */
    }
    if ([tableView isEqual:_contentTableView2]) {
        
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoSensible"];
        /*
        if (![selectedValues containsObject:[tableViewDataArray2 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray2 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray2 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
        */
    }
    if ([tableView isEqual:_contentTableView3]) {
        
        ListCell *cell = (ListCell *)[tableView cellForRowAtIndexPath:indexPath];
        cell.imageView.image=[UIImage imageNamed:@"iconoEspecial"];
        /*
        if (![selectedValues containsObject:[tableViewDataArray3 objectAtIndex:indexPath.row]]) {
            [self.selectedCollectionView performBatchUpdates:^{
                [selectedValues addObject:[tableViewDataArray3 objectAtIndex:indexPath.row]];
                [self.selectedCollectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:selectedValues.count-1 inSection:0]]];
            } completion:^(BOOL finished) {
                [self.selectedCollectionView reloadData];
            }];
            
        }
        //[tableViewDataArray removeObjectAtIndex:indexPath.row];
        //[self.contentTableView reloadData];
        NSInteger index = [selectedValues indexOfObject:[tableViewDataArray3 objectAtIndex:indexPath.row]];
        if (index!= NSIntegerMax) {
            
        }else{
            index = selectedValues.count-1;
        }
        [self.selectedCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
        [self animateSelectedCollectionView];
        */
    }
    
}

#pragma mark - UICollectionview DataSource & Delegate
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return selectedValues.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *developer = [selectedValues objectAtIndex:indexPath.row];
    SelectedCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SelectedCell" forIndexPath:indexPath];
    cell.devName.text = developer[@"name"];
    
    if ([developer[@"peso"] isEqualToString:@"1"]) {
        cell.devIcon.image=[UIImage imageNamed:@"iconoEstandarBlanco"];
    }
    if ([developer[@"peso"] isEqualToString:@"2"]) {
        cell.devIcon.image=[UIImage imageNamed:@"iconoSensibleBlanco"];
    }
    if ([developer[@"peso"] isEqualToString:@"3"]) {
        cell.devIcon.image=[UIImage imageNamed:@"iconoEspecialBlanco"];
    }
    cell.removeButton.tag = 10000+indexPath.row;
    [cell.removeButton addTarget:self action:@selector(cellRemoveButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - Animations
-(void)animateSelectedCollectionView{
    if (selectedValues.count > 0) {
        self.selectedCollectionHeightConstrain.constant = 140;
    }else{
        self.selectedCollectionHeightConstrain.constant = 0;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark - CellButton Action
-(IBAction)cellRemoveButtonAction:(id)sender{
    UIButton *button = (UIButton *)sender;
    NSInteger index = button.tag-10000;
    [self.selectedCollectionView performBatchUpdates:^{
        [selectedValues removeObjectAtIndex:index];
        [self.selectedCollectionView deleteItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:index inSection:0]]];
    } completion:^(BOOL finished) {
        [self.selectedCollectionView reloadData];
        [self animateSelectedCollectionView];
    }];
}

- (IBAction)segmentControl:(id)sender {
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        [_contentTableView1 setHidden:NO];
        [_contentTableView2 setHidden:YES];
        [_contentTableView3 setHidden:YES];
    }
    if (selectedSegment == 1) {
        [_contentTableView1 setHidden:YES];
        [_contentTableView2 setHidden:NO];
        [_contentTableView3 setHidden:YES];
    }
    if (selectedSegment == 2) {
        [_contentTableView1 setHidden:YES];
        [_contentTableView2 setHidden:YES];
        [_contentTableView3 setHidden:NO];
    }
}

- (IBAction)doneButtonAction:(id)sender {

    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(JGCustomSelectionSelectedValues:)]){
        [[self delegate] JGCustomSelectionSelectedValues:selectedValues];
    }
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)terminarCalculo:(id)sender
{
    if (selectedValues.count>0) {
        double a=0,b=0,c=0;
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        for (int i=0; i<selectedValues.count; i++) {
            NSDictionary *index = [selectedValues objectAtIndex:i];
            if ([index[@"peso"] isEqual:@"1"]) {
                a++;
            }
            if ([index[@"peso"] isEqual:@"2"]) {
                b++;
            }
            if ([index[@"peso"] isEqual:@"3"]) {
                c++;
            }
        }
    
        double vMin= ((a*1)+(b*2)+(c*3))/(a+b+c);
    
        NSLog(@"%f",vMin);
    
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        [prefs setDouble:vMin forKey:@"doubleKey"];
        [prefs synchronize];
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
        popUpViewController *pvc = [self.storyboard instantiateViewControllerWithIdentifier:@"PopUp"];
        
        CGSize iOSScreenSize = [[UIScreen mainScreen]bounds].size;
        if (iOSScreenSize.height == 480)
            pvc.view.frame = CGRectMake(0, 0, 280.0f, 440.0f);
        if (iOSScreenSize.height == 568)
            pvc.view.frame = CGRectMake(0, 0, 280.0f, 535.0f);
        if (iOSScreenSize.height == 667)
            pvc.view.frame = CGRectMake(0, 0, 320.0f, 535.0f);
        if (iOSScreenSize.height == 736)
            pvc.view.frame = CGRectMake(0, 0, 320.0f, 535.0f);
        [self presentPopUpViewController:pvc];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sin elementos"
                                                            message:@"Seleccione al menos uno de la lista."
                                                           delegate:self
                                                  cancelButtonTitle:@"Ok!"
                                                  otherButtonTitles: nil];
        
        [alertView show];
    }
}

- (void)dismiss{
    [self dismissPopUpViewController];
}

@end
