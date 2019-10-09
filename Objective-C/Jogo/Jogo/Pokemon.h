//
//  Pokemon.h
//  Jogo
//
//  Created by Usuário Convidado on 14/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject{
    NSString *nome;
    int cp;
    NSString *tipoPokemon;
}

@property (nonatomic, retain) NSString *nome;
@property (nonatomic) int cp;
@property (nonatomic) NSString *tipoPokemon;

-(void)attackPokemonEnemy:(NSString*)inimigo comCp:(int)cp;

-(NSString *)evoluirComStatus:(bool)status;

-(NSString *)verFraqueza;

-(int)evoluirComStatus2:(bool)status;

-(int)treinarCp:(int)cp;

//Construtor Cheio
-(Pokemon *) initWithNome:(NSString *)_nome
                    andCp:(int)_cp
           andTipoPokemon:(NSString *)_tipoPokemon;


@end
