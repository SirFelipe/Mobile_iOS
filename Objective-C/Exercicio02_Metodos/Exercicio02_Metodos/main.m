//
//  main.m
//  Aula4-Exercicio2
//
//  Created by Usuário Convidado on 28/02/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Enfermeira *e = [[Enfermeira alloc] init];
        [e setNome:@"Roberta de Andrade"];
        [e setIdade:25];
        [e setSalario:2500];
        [e setStatus:TRUE];
        
        NSLog(@"A enfermeira %@, de %d anos, Salário: %0.2f, Status: %i", [e getNome],
              [e getIdade], [e getSalario],[e getStatus]);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
