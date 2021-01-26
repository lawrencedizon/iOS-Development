//
//  ViewController.swift
//  ActivitySpinnerAnimation
//
//  Created by Lawrence Dizon on 1/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var spinner: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.startAnimating()
        
        //spinner.backgroundColor = .red
        //spinner.color =  .blue
        
        
    }
    
    @IBAction func buttonTapped() {
        spinner.hidesWhenStopped = true
        spinner.stopAnimating()
    }


}

