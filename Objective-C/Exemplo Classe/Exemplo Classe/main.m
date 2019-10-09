//
//  main.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

//IMPORT FRAMEWORK COM <FRAMEWORK>
#import <Foundation/Foundation.h>

//IMPORT CLASSES COM "CLASSE"
#import "Atleta.h"

//IMPORT CLASSE "ESPORTE.H"
#import "Esporte.h"

#import "MassagemAtleta.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"José da Silva"];
        [a setIdade:23];
        
        //SE FOR @ é para objetos.
        //Se for a letra %d é para inteiros
        NSLog(@"O Iron man %@ tem %d anos",[a getNome], [a getIdade]);
        
        [a calcularImcComPeso:(92) eAltura:1.80];
        
        NSLog(@"%@", [a calcularRendimentonaAguaemMetros:5000 eHoras:2]);
        
        Esporte *m = [[Esporte alloc]init];
        [m setModalidade:@"Judô"];
        NSLog(@"Modalidade é: %@", [m modalidade]);
        
        Atleta *a2 = [[Atleta alloc]initWithNome:@"Mulher Maravilha" andIdade:30];
        NSLog(@"A mulher maravilha %@ tem %d anos",[a2 getNome], [a2 getIdade]);
        
        MassagemAtleta *ma = [[MassagemAtleta alloc]init];
        //Agora como criamos o get/set da classe atleta com a @property eu tenho duas formas de set
        //Esse método foi gerado automaticamente pelas notaçōes @property e @synthesizes
        [ma setAtleta:a];
        [ma massagearAtleta];

    }
    return 0;
}
