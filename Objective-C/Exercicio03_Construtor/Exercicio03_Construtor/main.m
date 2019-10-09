//
//  main.m
//  Exercicio03_Construtor
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        Enfermeira *e = [[Enfermeira alloc]initWithNome:@"Joana Martins" andNumero:12345 andSalario:3500 andStatus:true];
        NSLog(@"Enfermeira: %@, Número: %d, Salario: %0.f",[e nome], [e numero], [e salario]);
        NSLog(@"A enfermeira está de plantão: %@",e.status?@"sim":@"não");
        
        Enfermeira *e2 = [[Enfermeira alloc]init];
        
        [e2 setNome:@"Sonia Levain"];
        [e2 setNumero:54321];
        [e2 setSalario:5000];
        [e2 setStatus:false];
        
        NSLog(@"Enfermeira: %@, Número: %d, Salário: %0.f", [e2 nome], [e2 numero], [e2 salario]);
        NSLog(@"A enfermeira está de plantão: %@",e2.status?@"sim":@"não");
        
    }
    return 0;
}
