//
//  contrasenaTableViewController.m
//  Protección inai
//
//  Created by Ricardo Isai Gonzalez Herrera on 07/11/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "contrasenaTableViewController.h"
#import "LTHPasscodeViewController.h"

@interface contrasenaTableViewController () <LTHPasscodeViewControllerDelegate>

@end

@implementation contrasenaTableViewController

- (void)viewDidLoad {
    
    [LTHPasscodeViewController sharedUser].delegate = self;
    [LTHPasscodeViewController sharedUser].maxNumberOfAllowedFailedAttempts = 3;
        
    [self _refreshUI];
    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)_refreshUI {
    if ([LTHPasscodeViewController doesPasscodeExist]) {
        _activarButton.enabled=NO;
        _activarButton.hidden=YES;
        _desactivarButton.enabled=YES;
        _desactivarButton.hidden=NO;
        _cambiarButton.enabled=YES;
        _cambiarButton.hidden=NO;
        _FcambiarButton.enabled=YES;
        _FcambiarButton.hidden=YES;
    }
    else {
        _activarButton.enabled=YES;
        _activarButton.hidden=NO;
        _desactivarButton.enabled=NO;
        _desactivarButton.hidden=YES;
        _cambiarButton.enabled=NO;
        _cambiarButton.hidden=YES;
        _FcambiarButton.enabled=YES;
        _FcambiarButton.hidden=NO;
    }
    //_typeSwitch.on = [[LTHPasscodeViewController sharedUser] isSimple];
}

/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:{
            return 1;
        }break;
        case 1:{
            return 2;
        }break;
        case 2:{
            return 1;
        }break;
        default:
            return 0;
            break;
    }
}
*/

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)activarContrasena:(id)sender{
    [[LTHPasscodeViewController sharedUser] showForEnablingPasscodeInViewController:self
                                                                            asModal:YES];
}
- (IBAction)desactivarContrasena:(id)sender{
    [[LTHPasscodeViewController sharedUser] showForDisablingPasscodeInViewController:self
                                                                             asModal:NO];
}

- (IBAction)cambiarCodigo:(id)sender {
    [[LTHPasscodeViewController sharedUser] showForChangingPasscodeInViewController:self asModal:YES];
}

# pragma mark - LTHPasscodeViewController Delegates -

- (void)passcodeViewControllerWillClose {
    NSLog(@"Passcode View Controller Will Be Closed");
    [self _refreshUI];
}

- (void)maxNumberOfFailedAttemptsReached {
    [LTHPasscodeViewController close];
    NSLog(@"Max Number of Failed Attemps Reached");
}

- (void)passcodeWasEnteredSuccessfully {
    NSLog(@"Passcode Was Entered Successfully");
}

- (void)logoutButtonWasPressed {
    NSLog(@"Logout Button Was Pressed");
}

@end
