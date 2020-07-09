//
//  ViewController.swift
//  UISwitchProject
//
//  Created by Lawrence Dizon on 7/8/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mySwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch){
        if sender.isOn {
            view.backgroundColor = .red
        }else {
            view.backgroundColor = .blue
        }
    }


}

