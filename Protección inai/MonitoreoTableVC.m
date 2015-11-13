//
//  MonitoreoTableVC.m
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "MonitoreoTableVC.h"
#import "JailbrokenDetector.h"
#import "SCLAlertView.h"
#import <sys/utsname.h>
#import "MGFinderView.h"

#define SinJailBreak @"Este dispositivo cuenta con Jailbreak"
#define ConJailBreak @"Este dispositivo NO cuenta con Jailbreak"

@interface MonitoreoTableVC ()

@property (strong, nonatomic) IBOutlet MGFinderView *finderView;

@property (strong, nonatomic) IBOutlet MGFinderView *finderView2;
@end

NSString *kSuccessTitle = @"Sin Jailbreak";
NSString *kButtonTitle = @"Ok";


@implementation MonitoreoTableVC

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    
    self.modelDevice.text = [self deviceName];
    
    // View from IB
    [_finderView startAnimating];
    
    [_finderView2 startAnimating];
 
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
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
-(void)Mensaje:(NSString*)string{
    
    
    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
    
    
    
    alert.soundURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/right_answer.mp3", [NSBundle mainBundle].resourcePath]];
    
    [alert showSuccess:kSuccessTitle subTitle:string closeButtonTitle:kButtonTitle duration:0.0f];

}


- (IBAction)jailBreakDetect:(id)sender {
    
 
    
    
    if([JailbrokenDetector isDeviceJailbroken])
        //NSLog(@"Device with jailbreak");
        [self Mensaje:SinJailBreak];
    
    
    else
        // NSLog(@"Device without jailbreak");
        [self Mensaje:ConJailBreak];
    
}

-(NSString *) deviceName
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *model=[NSString stringWithCString:systemInfo.machine
                                       encoding:NSUTF8StringEncoding];
    
    
    
    NSArray *items = @[@"i386",@"x86_64",@"iPod1,1",@"iPod2,1",@"iPod3,1",@"iPod4,1",@"iPod7,1",
                       @"iPhone1,1",@"iPhone1,2",@"iPhone2,1",@"iPad1,1",@"iPad3,1",@"iPad3,1",
                       @"iPhone3,1",@"iPhone3,3",@"iPhone4,1",@"iPhone5,1",@"iPhone5,2",@"iPad3,4",
                       @"iPad2,5",@"iPhone5,3",@"iPhone5,4",@"iPhone6,1",@"iPhone6,2",@"iPad4,1",
                       @"iPad4,2",@"iPad4,4",@"iPad4,5",@"iPad4,7",@"iPhone7,1",@"iPhone7,2",@"iPhone8,1",
                       @"iPhone8,2"];
    NSUInteger item = [items indexOfObject:model];
    switch (item) {
        case 0:
            model=@"32-bit Simulator";
            break;
        case 1:
            model=@"64-bit Simulator";
            break;
        case 2:
            model=@"iPod Touch";
            break;
        case 3:
            model=@"iPod Touch Second Generation";
            break;
        case 4:
            model=@"iPod Touch Third Generation";
            break;
        case 5:
            model=@"iPod Touch Fourth Generation";
            break;
        case 6:
            model=@"iPod Touch 6th Generation";
            break;
        case 7:
            model=@"iPhone";
            break;
        case 8:
            model=@"iPhone 3G";
            break;
        case 9:
            model=@"iPhone 3GS";
            break;
        case 10:
            model=@"iPad";
            break;
        case 11:
            model=@"iPad 2";
            break;
        case 12:
            model=@"3rd Generation iPad";
            break;
        case 13:
            model=@"iPhone 4";
            break;
        case 14:
            model=@"iPhone 4";
            break;
        case 15:
            model=@"iPhone 4S";
            break;
        case 16:
            model=@"iPhone 5";
            break;
        case 17:
            model=@"iPhone 5";
            break;
        case 18:
            model=@"4th Generation iPad";
            break;
        case 19:
            model=@"iPad Mini";
            break;
        case 20:
            model=@"iPhone 5c";
            break;
        case 21:
            model=@"iPhone 5c";
            break;
        case 22:
            model=@"iPhone 5s";
            break;
        case 23:
            model=@"iPhone 5s";
            break;
        case 24:
            model=@"5th Generation iPad";
            break;
        case 25:
            model=@"5th Generation iPad";
            break;
        case 26:
            model=@"2nd Generation iPad Mini";
             break;
        case 27:
            model=@"2nd Generation iPad Mini";
             break;
        case 28:
            model=@"3rd Generation iPad Mini";
             break;
        case 29:
            model=@"iPhone 6 Plus";
             break;
        case 30:
            model=@"iPhone 6";
             break;
        case 31:
            model=@"iPhone 6S";
             break;
        case 32:
            model=@"iPhone 6S Plus";
        default:
            break;
    }
    
    return model;
}




@end
