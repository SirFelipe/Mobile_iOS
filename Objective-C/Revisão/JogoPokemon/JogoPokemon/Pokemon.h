//
//  Pokemon.h
//  JogoPokemon
//
//  Created by Usuário Convidado on 22/03/18.
//  Copyright © 2018 Philipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject{
    
    NSString *nome;
    int cp;
    NSString *tipoPokemon;
}

@property (nonatomic, retain) NSString *nome;
@property (nonatomic) int cp;
@property (nonatomic, retain) NSString *tipoPokemon;

-(Pokemon *) initWithNome:(NSString *)_nome andCp:(int)_cp andTipo:(NSString *)_tipoPokemon;

-(void)atacarPokemonInimigo:(NSString *)enemyName;


-(NSString *)verFraquezas;

@end
