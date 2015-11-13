//
//  InicioTableVC.m
//  Protección inai
//
//  Created by StickMx on 27/10/15.
//  Copyright © 2015 stick. All rights reserved.
//

#import "InicioTableVC.h"
#import "JGCustomSelection.h"

@interface InicioTableVC () <JGCustomSelectionDelegate>{
    
}

@end

@implementation InicioTableVC

- (void)viewDidLoad {
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

-(NSArray *)generateDataSource1{
    NSMutableArray *array = [@[] mutableCopy];
    [array addObject:@{@"name":@"Nombre",                       @"company":@"img1a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Teléfono",                     @"company":@"img2a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Edad",                         @"company":@"img3a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Sexo",                         @"company":@"img4a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"RFC",                          @"company":@"img5a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"CURP",                         @"company":@"img6a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Estado civil",                 @"company":@"img7a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Email",                        @"company":@"img8a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Fecha de nacimiento",          @"company":@"img9a",        @"peso":@"1"}];
    [array addObject:@{@"name":@"Lugar de nacimiento",          @"company":@"img10a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Nacionalidad",                 @"company":@"img11a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Puesto de trabajo",            @"company":@"img12a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Lugar de trabajo",             @"company":@"img13a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Experiencia laboral",          @"company":@"img14a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Contacto laboral",             @"company":@"img15a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Idioma",                       @"company":@"img16a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Escolaridad",                  @"company":@"img17a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Trayectoria edu.",             @"company":@"img18a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Títulos",                      @"company":@"img19a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Certificados",                 @"company":@"img20a",       @"peso":@"1"}];
    [array addObject:@{@"name":@"Cedula prof.",                 @"company":@"img21a",       @"peso":@"1"}];
    return array;
}

-(NSArray *)generateDataSource2{
    NSMutableArray *array = [@[] mutableCopy];
    [array addObject:@{@"name":@"Ubicación física",             @"company":@"img1b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Saldos bancarios",             @"company":@"img2b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Estados de cuenta",            @"company":@"img3b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Número de cuenta",             @"company":@"img4b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Cuenta de inversión",          @"company":@"img5b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Bienes muebles",               @"company":@"img6b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Bienes inmuebles",             @"company":@"img7b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Información fiscal",           @"company":@"img8b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Historial Crediticio",         @"company":@"img9b",        @"peso":@"2"}];
    [array addObject:@{@"name":@"Ingresos",                     @"company":@"img10b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Egresos",                      @"company":@"img11b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Buró de crédito",              @"company":@"img12b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Seguros",                      @"company":@"img13b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Afore",                        @"company":@"img14b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Finanzas",                     @"company":@"img15b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Núm. Tarjeta Crédito",         @"company":@"img16b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Núm. Tarjeta Débito",          @"company":@"img17b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Información biométrica",       @"company":@"img18b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Firma autógrafa",              @"company":@"img19b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Firma electrónica",            @"company":@"img20b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Antecedentes penales",         @"company":@"img21b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Amparos",                      @"company":@"img22b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Demandas",                     @"company":@"img23b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Contratos",                    @"company":@"img24b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Litigios",                     @"company":@"img25b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Juicios",                      @"company":@"img26b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Origen racial/étnico",         @"company":@"img27b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Estado salud (pasado)",        @"company":@"img28b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Estado salud (presente)",      @"company":@"img29b",       @"peso":@"2"}];//******
    [array addObject:@{@"name":@"Estado salud (futuro)",        @"company":@"img30b",       @"peso":@"2"}];//******
    [array addObject:@{@"name":@"Información genética",         @"company":@"img31b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Creencias religiosas",         @"company":@"img32b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Afiliación sindical",          @"company":@"img33b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Opiniones políticas",          @"company":@"img34b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Preferencia sexual",           @"company":@"img35b",       @"peso":@"2"}];
    [array addObject:@{@"name":@"Hábitos sexuales",             @"company":@"img36b",       @"peso":@"2"}];
    return array;
}

-(NSArray *)generateDataSource3{
    NSMutableArray *array = [@[] mutableCopy];
    [array addObject:@{@"name":@"Tipo tarj. Credito",           @"company":@"img1c",        @"peso":@"3"}];
    [array addObject:@{@"name":@"Vencimiento Tarjeta Cred.",    @"company":@"img2c",        @"peso":@"3"}];
    [array addObject:@{@"name":@"Códigos de seg.",              @"company":@"img3c",        @"peso":@"3"}];
    [array addObject:@{@"name":@"Datos banda magnética",        @"company":@"img4c",        @"peso":@"3"}];
    [array addObject:@{@"name":@"Núm. Identificaion pers.",     @"company":@"img5c",        @"peso":@"3"}];
    return array;
}

- (IBAction)caculate:(id)sender {
    JGCustomSelection *customSelection = [self.storyboard instantiateViewControllerWithIdentifier:@"JGCustomSelection"];
    customSelection.tableViewDataArray1 = [[self generateDataSource1] mutableCopy];
    customSelection.tableViewDataArray2 = [[self generateDataSource2] mutableCopy];
    customSelection.tableViewDataArray3 = [[self generateDataSource3] mutableCopy];
    customSelection.delegate = self;
    [self presentViewController:customSelection animated:YES completion:^{
        
    }];
}

#pragma mark - JGCustomSelectionDelegate
-(void)JGCustomSelectionSelectedValues:(NSArray *)selectedValues{
    self.resultLbl.text = [NSString stringWithFormat:@"%lu developers selected",(unsigned long)selectedValues];
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

@end
