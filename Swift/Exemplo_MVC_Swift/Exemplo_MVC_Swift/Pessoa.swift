//
//  Pessoa.swift
//  Exemplo_MVC_Swift
//
//  Created by Usuário Convidado on 04/04/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

import Foundation

class Pessoa{
    var nome:String!
    var peso:Float!
    var altura:Float!
    var imc:Float!
    
    //um exemplo de parâmetro do tipo void
    func calcularIMC(){
        imc=peso/(altura*altura)
    }
    
    //um exemplo sem parâmetro com retorno de um float
    func calcularIMC_2() -> Float{
        return peso/(altura*altura)
    }
}
