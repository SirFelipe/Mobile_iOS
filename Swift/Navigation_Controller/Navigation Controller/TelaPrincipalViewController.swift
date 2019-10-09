//
//  TelaPrincipalViewController.swift
//  Navigation Controller
//
//  Created by Usuário Convidado on 02/05/18.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

import UIKit

class TelaPrincipalViewController: UIViewController {
    

    @IBAction func resetarNavegacao(sender: UIStoryboardSegue){
        //Esse método não possui implementação
        //Esse método recebe um argumento do tipo UIStoryboardSegue
        //Após isso devemos fazer um link entre o botão de origem
        //e a ação Unwind(Documentação Apple), ou Exit(Xcode)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
