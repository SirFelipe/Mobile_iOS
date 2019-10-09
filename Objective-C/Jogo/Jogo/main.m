//
//  main.m
//  Jogo
//
//  Created by Usuário Convidado on 14/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Pokemon *p = [[Pokemon alloc]init];
        p.nome = @"Pikachu";
        p.tipoPokemon = @"Elétrico";
        p.cp = 1245;
        NSLog(@"O Pokémon %@ tem cp %d é do tipo %@", p.nome, p.cp, p.tipoPokemon);
        
        Pokemon *charizard = [[Pokemon alloc]initWithNome:@"Charizard" andCp:8001 andTipoPokemon:@"eletrico" ];
        
        NSLog(@"O Pokémon %@ tem cp de %d e é do tipo %@", [charizard nome], [charizard cp], [charizard tipoPokemon]);
        
        [p attackPokemonEnemy:@"Zubat" comCp:875];
        [charizard attackPokemonEnemy:@"Blastoise" comCp:charizard.cp];
        
        NSLog(@"%@", [p evoluirComStatus:true]);
        NSLog(@"%d", [charizard evoluirComStatus2:false]);
        
        NSLog(@"%@",[charizard verFraqueza]);

    }
    return 0;
}
