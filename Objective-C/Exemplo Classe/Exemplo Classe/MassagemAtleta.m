//
//  MassagemAtleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

#import "MassagemAtleta.h"

@implementation MassagemAtleta


@synthesize atleta;

-(void)massagearAtleta{
NSLog(@"Massageando o atleta %@ %d",[atleta getNome], [atleta getIdade]);
}


@end
