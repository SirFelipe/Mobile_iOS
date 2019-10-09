//
//  Atleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atleta: NSObject{
    NSString *nome;
    int idade;
}

//Getter and Setter
// - SIGNIFICA MÉTODO DE INSTANCIA (INSTANCIAR O OBJETO PARA UTILIZAR O METODO)
-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;
-(void)setIdade:(int)_idade;
-(int)getIdade;
-(void)calcularImcComPeso:(float)peso
                  eAltura:(float) altura;

-(NSString *)calcularRendimentonaAguaemMetros:(float)metros
                                       eHoras:(float)horas;
//+ SIGNIFICA METODO DE CLASSE (PODENDO UTILIZAR O METODO USANDO IMPORT DELE SEM INSTANCIAR A CLASSE)

//TODA VARIAVEL QUE VEM DE OUTRA CLASSE DEVE SE TER O PONTEIRO

//Construtor
-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade;

@end
