//
//  Atleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import "Atleta.h"

@implementation Atleta


//GETTERS AND SETTERS

// - SIGNIFICA MÉTODO DE INSTANCIA
-(void)setNome:(NSString *)_nome{
    nome=_nome;
}
-(NSString *)getNome{
    return nome;
}

-(void)setIdade:(int)_idade{
    idade = _idade;
}
-(int)getIdade{
    return idade;
}

-(void)calcularImcComPeso:(float)peso
                  eAltura:(float) altura{
    float imc;
    imc = peso/(altura*altura);
    
    NSLog(@"O atleta %@ tem imc: %0.2f ", [self getNome], imc);
}

-(NSString *)calcularRendimentonaAguaemMetros:(float)metros
                                       eHoras:(float)horas{
    float resultado = metros/horas;
    NSString *texto = [NSString stringWithFormat:@"O rendimento é %0.2f metros por hora", resultado];
    
    return texto;
}

//Construtor
-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade{
    self = [super init];
    if(self){//testa se a inicialização foi ok
        nome=_nome;
        idade=_idade;
    }
    return self;
}

@end
