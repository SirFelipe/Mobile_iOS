//
//  Enfermeira.m
//  Aula4-Exercicio2
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

//GETTER`S AND SETTER`S DA FORMA TRADICIONAL
-(void) setNome:(NSString *)_nome{
    nome=_nome;
}
-(NSString *) getNome{
    return nome;
}

-(void) setIdade:(int)_idade{
    idade=_idade;
}
-(int) getIdade{
    return idade;
}

-(void) setSalario:(float)_salario{
    salario=_salario;
}
-(float) getSalario{
    return salario;
}

-(void) setStatus:(BOOL)_status{
    status=_status;
}
-(BOOL) getStatus{
    return status;
}
@end
