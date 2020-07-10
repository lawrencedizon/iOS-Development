//
//  ViewController.swift
//  Optionals
//
//  Created by Lawrence Dizon on 7/9/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var button: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button?.backgroundColor = .red
        configureButton()
    }
    
    func configureButton(){
        if let myButton = button {
            //configure it
            myButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100 )
            myButton.center = view.center
            myButton.backgroundColor =  .orange
            view.addSubview(myButton)
        }else{
            button = UIButton()
            configureButton()
        }
    }


}

