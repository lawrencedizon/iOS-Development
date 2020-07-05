//
//  ViewController.swift
//  WebSafari
//
//  Created by Lawrence Dizon on 7/5/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webview.load(URLRequest(url: URL(string: "https://google.com")!))
    }
    
   


}

