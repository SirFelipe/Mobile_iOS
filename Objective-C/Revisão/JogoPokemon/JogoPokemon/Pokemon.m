//
//  Pokemon.m
//  JogoPokemon
//
//  Created by Usuário Convidado on 22/03/18.
//  Copyright © 2018 Philipe Oliveira. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

@synthesize nome, cp, tipoPokemon;

-(Pokemon *) initWithNome:(NSString *)_nome andCp:(int)_cp andTipo:(NSString *)_tipoPokemon{
    self = [super init];
    if(self){
        [self setNome: _nome];
        [self setCp: _cp];
        [self setTipoPokemon: _tipoPokemon];
    }
    
    return self;
}

-(void)atacarPokemonInimigo:(NSString *)enemyName{
    NSLog(@"O seu %@ irá atacar o %@ inimigo com %d de força de combate.", [self nome], enemyName, [self cp]);
}

-(NSString *)verFraquezas{
    if([[self tipoPokemon]  isEqual: @"ELÉTRICO"]){
        return @"O pokémon tem fraquezas para ataques do tipo TERRA, PEDRA e PLANTA";
    }else if([[self tipoPokemon] isEqual: @"FOGO"]){
        return @"O pokémon tem fraquezas para ataques do tipo ÁGUA e PEDRA";
    }else if([[self tipoPokemon] isEqual:@"AGUA"]){
        return @"O pokémon tem fraquezas para ataques do tipo PLANTA, ELÉTRICO";
    }else if([[self tipoPokemon] isEqual: @"TERRA"]){
        return @"O pokémon tem fraqueza para ataques do tipo ÁGUA, VOADOR, PLANTA";
    }
    return @"O pokémon não tem fraqueza conhecida";
}

@end
