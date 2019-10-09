//
//  TelaXViewController.swift
//  Navigation Controller
//
//  Created by Usuário Convidado on 02/05/18.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

import UIKit

class TelaXViewController: UIViewController {

    @IBAction func abrirSceneYellow(_ sender: Any) {
        self.performSegue(withIdentifier: "telaXparaTelaVerdeSegue", sender: nil)
    }
    
    @IBAction func abrirScenePink(_ sender: Any) {
        self.performSegue(withIdentifier: "telaXparaTelaRosaSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "telaXparaTelaRosaSegue"{
            let t = segue.destination as! TelaRosaViewController
            t.textoDoLabel = "Passando os dados para uma label em outra tela"
        }
    }
 

}
