//
//  Enfermeira.h
//  Exercicio03_Construtor
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject{
    NSString *nome;
    int numero;
    float salario;
    BOOL status;
}

@property(nonatomic, retain)NSString*nome;

@property(nonatomic)int numero;

@property(nonatomic)float salario;

@property(nonatomic)BOOL status;

-(void)medicarComQtdML:(int)ml eMedicamento:(NSString *)remedio;

-(BOOL)checarPlantao:(BOOL)_status;

//Construtor
-(Enfermeira *)initWithNome:(NSString *)_nome
               andNumero:(int)_numero
               andSalario:(float)_salario
                  andStatus:(BOOL)_status;

@end
