//
//  TelaRMViewController.swift
//  Exer_NavUIkitWeb
//
//  Created by Usuário Convidado on 09/05/18.
//  Copyright © 2018 Philipe Oliveira. All rights reserved.
//

import UIKit

class TelaRMViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func abrirNotaScene(_ sender: Any) {
        performSegue(withIdentifier: "telaRMparaNotaSegue", sender: nil)
    }
    
    @IBAction func mostrarMsg(_ sender: Any) {
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: "Mensagem",
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title:"OK",
            style: UIAlertActionStyle.default,
            handler:nil))
        
        present(alerta, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
