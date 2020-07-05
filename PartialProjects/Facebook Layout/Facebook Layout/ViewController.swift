//
//  ViewController.swift
//  Facebook Layout
//
//  Created by Lawrence Dizon on 7/4/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed(){
        print("try to login!")
    }


}

