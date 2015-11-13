//
//  popUpViewController.m
//  Protección inai
//
//  Created by Ricardo Isai Gonzalez Herrera on 09/11/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "popUpViewController.h"

@interface popUpViewController ()

@end

@implementation popUpViewController

- (void)viewDidLoad {
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    // getting a Double
    _calculo = [prefs floatForKey:@"doubleKey"];
    
    NSLog(@"%f",_calculo);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)finalizar:(id)sender {
    
    double ep=1;
    if (_pregunta1.selectedSegmentIndex==1) {
        ep++;
    }
    if (_pregunta2.selectedSegmentIndex==1) {
        ep++;
    }
    if (_pregunta3.selectedSegmentIndex==1) {
        ep++;
    }
    if (_pregunta4.selectedSegmentIndex==1) {
        ep++;
    }

    double resultado=_calculo*ep*150;
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setDouble:resultado forKey:@"resultadoKey"];
    [prefs synchronize];
    
    NSLog(@"%f",resultado);
    
    [UIView animateWithDuration:0.3 animations:^{
        CGSize iOSScreenSize = [[UIScreen mainScreen]bounds].size;
        if (iOSScreenSize.height == 480)
            _resultadoView.center=CGPointMake(self.view.center.x-19.5,self.view.center.y-20);
        if (iOSScreenSize.height == 568)
            _resultadoView.center=CGPointMake(self.view.center.x-19.5,self.view.center.y-16);
        if (iOSScreenSize.height == 667)
            _resultadoView.center=CGPointMake(self.view.center.x-27.5,self.view.center.y-66);
        if (iOSScreenSize.height == 736)
            _resultadoView.center=CGPointMake(self.view.center.x-47,self.view.center.y-101);
        
    }];
    NSLog(@"%@",self.parentViewController);
    _resultadoLabel.text=[NSString stringWithFormat:@"%i MXN",(int)resultado];
}

/*
 // Pasamos la segunda view al costado
 - (IBAction)returnView:(id)sender {
        [UIView animateWithDuration:0.3 animations:^{
            _overlayView.center=CGPointMake(_overlayView.center.x+320, _overlayView.center.y);
        }];
 }
*/

- (IBAction)guardar:(id)sender {
 
    [[NSNotificationCenter defaultCenter] postNotificationName:@"dismissPopUp" object:nil];
}

@end
