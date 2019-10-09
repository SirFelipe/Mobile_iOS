//
//  Enfermeira.m
//  Exercicio03_Construtor
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

@synthesize nome,numero,salario,status;

-(void)medicarComQtdML:(int)ml eMedicamento:(NSString *)remedio{
    
    NSLog(@"Eu %@ vou aplicar %d ml do remédio %@", [self nome], ml, remedio);
}

-(BOOL)checarPlantao:(BOOL)_status{
    BOOL plantao;
    
    if(status == true){
        plantao = true;
    }else{
        plantao = false;
    }
    
    return plantao;
}

//Construtor Cheio
-(Enfermeira *)initWithNome:(NSString *)_nome
                   andNumero:(int)_numero
                 andSalario:(float)_salario
                  andStatus:(BOOL)_status{
    self = [super init];
    if(self){ //testa se a inicialização foi ok
        nome=_nome;
        numero=_numero;
        salario=_salario;
        status=_status;
    }
    
    return self;
}

@end
