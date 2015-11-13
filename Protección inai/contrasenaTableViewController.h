//
//  contrasenaTableViewController.h
//  Protección inai
//
//  Created by Ricardo Isai Gonzalez Herrera on 07/11/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface contrasenaTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIButton *activarButton;
@property (weak, nonatomic) IBOutlet UIButton *desactivarButton;
@property (weak, nonatomic) IBOutlet UIButton *cambiarButton;

@property (weak, nonatomic) IBOutlet UIButton *FcambiarButton;

- (IBAction)activarContrasena:(id)sender;
- (IBAction)desactivarContrasena:(id)sender;

- (IBAction)cambiarCodigo:(id)sender;

@end
