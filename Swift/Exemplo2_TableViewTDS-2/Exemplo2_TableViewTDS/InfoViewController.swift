//
//  InfoViewController.swift
//  Exemplo2_TableViewTDS
//
//  Created by Usuário Convidado on 22/08/2018.
//  Copyright © 2018 Agesandro. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    
    @IBOutlet weak var labelNomeAnimal: UILabel!
    @IBOutlet weak var labelPaisAnimal: UILabel!
    @IBOutlet weak var imgFotoAnimal: UIImageView!
    
    var nomeAnimal:String=""
    var paisAnimal:String=""
    var fotoAnimal:UIImage?=nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNomeAnimal.text = nomeAnimal
        labelPaisAnimal.text = paisAnimal
        imgFotoAnimal.image = fotoAnimal
    

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
