
//
//  popUpViewController.h
//  Protección inai
//
//  Created by Ricardo Isai Gonzalez Herrera on 09/11/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface popUpViewController : UIViewController

@property (nonatomic) double calculo;

@property (weak, nonatomic) IBOutlet UIView *resultadoView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pregunta1;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pregunta2;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pregunta3;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pregunta4;

@property (weak, nonatomic) IBOutlet UILabel *resultadoLabel;

- (IBAction)finalizar:(id)sender;

- (IBAction)guardar:(id)sender;

@end
