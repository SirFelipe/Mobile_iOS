//
//  Pokemon.m
//  Jogo
//
//  Created by Usuário Convidado on 14/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

@synthesize nome, cp, tipoPokemon;

//Procedure
-(void)attackPokemonEnemy:(NSString*)inimigo comCp:(int)cp{
    NSLog(@"O pokémon %@ irá atacar o pokémon inimigo %@ com %d CP",[self nome], inimigo , cp);
}


//Function
-(NSString *)evoluirComStatus:(bool)status{
    int novoCP;
    NSString *texto;
    
    //SE O STATUS FOR VERDADEIRO
    if(status){
        novoCP = self.cp * 2;
        texto = [NSString stringWithFormat:(@"O novo cp apos a evolução é %d"), novoCP];
        
    }else{
        novoCP = self.cp;
        texto = @"Não é possivel evoluir %@ agora";
    }
    return texto;
}

-(int)evoluirComStatus2:(bool)status{
    if (status){
        return self.cp * 2;
    }else{
        return self.cp;
    }
}


-(NSString *)verFraqueza{
    if([self.tipoPokemon isEqual:@"eletrico"]){
        return [NSString stringWithFormat:(@"O pokémon %@ tem fraqueza para pokémons tipo TERRA"), self.nome];
    }else if([self.tipoPokemon isEqual:@"agua"]){
        return [NSString stringWithFormat:(@"O pokémon tem fraqueza para pokemons do tipo PLANTA, ELETRICO"), self.nome];
    }else if([self.tipoPokemon  isEqual: @"terra"]){
        return @"O pokémon tem fraqueza para pokémons do tipo AGUA,PLANTA,VOADOR,LUTADOR";
    }else if([self.tipoPokemon  isEqual: @"planta"]){
        return @"O pokémon tem fraqueza para pokémons do tipo FOGO,VENENO,VOADOR";
    }else if([self.tipoPokemon  isEqual: @"fogo"]){
        return @"O pokémon tem fraqueza para pokémons do tipo AGUA,PEDRA,TERRA";
    }
    return @"O pokémon não tem fraquezas";
}

//Construtor Cheio
-(Pokemon *) initWithNome:(NSString *)_nome
                    andCp:(int)_cp
           andTipoPokemon:(NSString *)_tipoPokemon{
    
    self = [super init];
    if(self){
        nome=_nome;
        cp=_cp;
        tipoPokemon=_tipoPokemon;
    }
    
    return self;
}

@end
