//
//  Enfermeira.h
//  Aula4-Exercicio2
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject{
    NSString *nome;
    int idade;
    float salario;
    bool status;

}

//GETTER`S AND SETTER`S TRADICIONAIS
-(void) setNome:(NSString *)_nome;
-(NSString *) getNome;

-(void) setIdade:(int)_idade;
-(int) getIdade;

-(void) setSalario:(float)_idade;
-(float) getSalario;

-(void) setStatus:(BOOL)_status;
-(BOOL) getStatus;

@end
