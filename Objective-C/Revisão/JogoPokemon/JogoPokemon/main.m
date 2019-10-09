//
//  main.m
//  JogoPokemon
//
//  Created by Usuário Convidado on 22/03/18.
//  Copyright © 2018 Philipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Pokemon *p = [[Pokemon alloc]init];
        [p setNome:@"Pikachu"];
        [p setCp:1245];
        [p setTipoPokemon:@"ELÉTRICO"];
        
        Pokemon *charizard = [[Pokemon alloc]initWithNome:@"Charizard" andCp:8001 andTipo:@"FOGO"];
        
        NSLog(@"O pokémon %@ tem cp de %d e é do tipo %@", [p nome], [p cp], [p tipoPokemon]);
        
        NSLog(@"O pokémon %@ tem cp de %d e é do tipo %@", [charizard nome], [charizard cp], [charizard tipoPokemon]);
        
        [charizard atacarPokemonInimigo:@"Zubat"];
        NSLog(@"%@", [charizard verFraquezas]);
    }
    return 0;
}
