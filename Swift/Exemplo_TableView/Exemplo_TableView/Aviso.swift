//
//  Aviso.swift
//  Exemplo_TableView
//
//  Created by Usuário Convidado on 15/08/2018.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

import UIKit

class Aviso: NSObject {
    static func exibirAviso(msg:String, sender:AnyObject){
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        sender.present(alerta,animated:true,completion:nil)
    }
}
