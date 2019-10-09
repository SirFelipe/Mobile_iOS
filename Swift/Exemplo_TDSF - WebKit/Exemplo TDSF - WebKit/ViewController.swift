//
//  ViewController.swift
//  Exemplo TDSF - WebKit
//
//  Created by Usuário Convidado on 22/08/2018.
//  Copyright © 2018 Felipe Oliveira. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{

    @IBOutlet weak var meuWebKit: WKWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        meuActivity.stopAnimating()
        meuActivity.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuWebKit.navigationDelegate = self
        meuActivity.startAnimating()
        
        let url = URL(string: "https://www.vive.com/us")
        
        let request = URLRequest(url: url!)
        meuWebKit.load(request)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

