//
//  QRCodeViewController.swift
//  QRCodeGenerator
//
//  Created by Lawrence Dizon on 7/10/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var checkInTimeLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var generateQRCodeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressGenerateQRCode(_sender: Any){
        //Generate and load check in time
            let currentDateTime = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = .medium

            checkInTimeLabel.text = "Checked in at: \(dateFormatter.string(from: currentDateTime))"
        
        //Save user name information
            guard let firstName = firstNameTextField.text else {
                print("please enter valid first name")
                return
            }
            guard let lastName = lastNameTextField.text else {
                print("please enter valid last name")
                return
            }
        
        print("\(firstName ) \(lastName)")
        
        //Welcome patient
            welcomeLabel.text = "Welcome back, \(firstName)"
        
        //Hide name textfields and generateButton after QRCode generation
            firstNameTextField.isHidden = true
            lastNameTextField.isHidden = true
            generateQRCodeButton.isHidden = true
        
        //Generate QR Code
        image.image = generateQRCode(from: "\(firstName)-\(lastName)-\(checkInTimeLabel.text)")
    }
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }

        return nil
    }

    
    
}

