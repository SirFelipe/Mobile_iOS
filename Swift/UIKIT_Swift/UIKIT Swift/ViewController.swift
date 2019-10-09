//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 11/04/18.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblRota: UILabel!
    
    @IBAction func salvarDados(_ sender: Any) {
        var msg: String
        var tipo: String
        
        if meuSegmento.selectedSegmentIndex >= 0{
            tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            msg = "Veículo \(tipo) do ano \(lblAno.text!) salvo com sucesso"
        }else{
            tipo = ""
            msg = "Antes de salvar escolha o tipo de veiculo"
        }
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
        meuSegmento.selectedSegmentIndex = -1
        
    }
    @IBAction func escolherRota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber a rota",
            message: "Faça sua escolha",
            preferredStyle: UIAlertControllerStyle.actionSheet)
    
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler: {action in self.lblRota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertActionStyle.default,
            handler: {action in self.lblRota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.cancel,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblKm.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarValorSwitch(_ sender: UISwitch) {
        //Retornar true e false
        print(sender.isOn)
        //Retornar o valor de 0 e 1
        print(NSNumber(value: sender.isOn))
    }
    @IBAction func stepperValueChanged(_ sender: Any) {
        //Conversão de numero para texto usando \()
        //lblAno.text = "\(Int(meuStepper.value))"
        //conversão de numero para texto usando String()
        lblAno.text = String(Int(meuStepper.value));
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex){
            case 0:
                print("Voce escolheu a moto")
                break
            case 1:
                print("Voce escolheu o carro")
                break
            case 2:
                print("Voce escolheu o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
                break
            default:
                break
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980";
        lblKm.text = "7500";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

