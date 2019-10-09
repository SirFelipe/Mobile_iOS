//
//  main.m
//  Exercicio01_Variaveis
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //UNSIGNED não deixa a variavel armazenar numeros negativos.
        unsigned short int idade = 21;
        int VALOR = 10000000;
        
        enum diasSemana {segunda=1, terca=2, quarta=3,quinta=4,sexta=5,sabado=6, domingo=7};
        
        NSString *nome=@"Felipe Oliveira";
        
        NSLog(@"O premio acumulado é de R$: %d", VALOR);
        
        int tempoVivido = idade*365;
        
        //MARCADORES
        // %@ para objetos como NSStrings dentre outros.
        // %u para inteiros não sinalizados.
        // %d para inteiros sinalizados.
        // %s para unichar.
        
        NSLog(@"%@ você já viveu aproximadamente %d dias em %u anos", nome, tempoVivido, idade);
        
        if(idade >= 18){
            NSLog(@"Voce já é maior de idade.");
        }else{
            NSLog(@"Voce é menor de idade.");
        }
        
        
        
    }
    return 0;
}
