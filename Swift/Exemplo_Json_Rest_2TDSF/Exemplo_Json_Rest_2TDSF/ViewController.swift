//
//  ViewController.swift
//  Exemplo_Json_Rest_2TDSF
//
//  Created by Usuário Convidado on 05/09/2018.
//  Copyright © 2018 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var minhaImagem: UIImageView!
    @IBOutlet weak var local: UILabel!
    @IBOutlet weak var estado: UILabel!
    
    var session:URLSession?
    
    
    @IBAction func exibir(_ sender: Any) {
        //cria uma configuração de sessão padrão
        let config = URLSessionConfiguration.default
        //cria uma sessão com a configuração acima
        session = URLSession(configuration: config)
        //acesso a API
        let url = URL(string: "https://parks-api.herokuapp.com/parks/577024e4a44821110001ee93")
        //cria uma task para buscar as informações
        let task = session?.dataTask(with: url!, completionHandler: { (data, response, error) in
            //ações que serão executadas quando a task se completa
            //isso roda em background
            //let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            //print(texto!)
            if let nPQ = self.retornar(data: data!, chave: "nome"){
                if let ePq = self.retornar(data: data!, chave: "estado"){
                    if let appImagemURL = self.retornar(data: data!, chave: "urlfoto"){
                        //assume a thread principal para exibir o dado
                        DispatchQueue.main.async {
                            self.local.text = nPQ
                            self.estado.text = ePq
                            self.carregarImagemURL(imagemURL: appImagemURL)
                        }
                }
            }
        }
    })
    //disparo da execução task
    task?.resume()
}

func retornar(data: Data, chave:String)->String?{
    var resposta:String?=nil
    do{
        let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
        //cria e popula uma scrit a partir da chave nome
        if let nomeParque = json[chave] as? String{
            resposta = nomeParque
        }
        
    }catch let error as NSError{
        resposta = "Falha ao carregar \(error.localizedDescription)"
    }
    return resposta
}


/*
 func retornarNomeParque(data: Data)->String?{
 var resposta:String?=nil
 do{
 let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
 //cria e popula uma scrit a partir da chave nome
 if let nomeParque = json["nome"] as? String{
 resposta = nomeParque
 }
 
 }catch let error as NSError{
 resposta = "Falha ao carregar \(error.localizedDescription)"
 }
 return resposta
 }
 
 
 func retornarEstadoPQ(data:Data)-> String?{
 var resposta:String?=nil
 do{
 //a linha abaixo faz a leitura dos valoress do Json, NSJSONSeriaization faz o Parser do Json
 let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
 //cria e popula uma string a partir da chave "estado"
 if let estadoParque = json["estado"] as? String{
 resposta = estadoParque
 }
 
 }catch let error as NSError{
 return "Falha ao carregar :\(error.localizedDescription)"
 }
 return resposta
 }
 
 func retornarImagemPQ(data:Data)-> String?{
 var resposta:String?=nil
 do{
 //a linha abaixo faz a leitura dos valoress do Json, NSJSONSeriaization faz o Parser do Json
 let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
 //cria e popula uma string a partir da chave "urlfoto"
 if let urlString = json["urlfoto"] as? String{
 print(urlString)
 resposta = urlString
 }
 
 }catch let error as NSError{
 return "Falha ao carregar :\(error.localizedDescription)"
 }
 return resposta
 }
 */

func carregarImagemURL(imagemURL:String){
    //Cria uma URL da string imagemURL
    let myURL = URL(string: imagemURL)
    let url = URLRequest(url: myURL!)
    //cria uma task do tipo Download
    let session = URLSession.shared
    let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
        //se resposta = not null recebe o binário da imagem
        if let imagemData = data{
            //transforma o binário em UIImage e atualzia at ela da thread principal
            DispatchQueue.main.async {
                self.minhaImagem.image = UIImage(data: imagemData)
            }
        }
    })
    //disparo da execuçao da task
    task.resume()
}


override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}


}

