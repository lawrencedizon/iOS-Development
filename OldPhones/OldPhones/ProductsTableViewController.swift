//
//  ProductTableViewController.swift
//  OldPhones
//
//  Created by Lawrence Dizon on 8/3/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    private var products: [Product]?
    private let identifier = "productCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        products = [Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
        Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
        Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
        Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4")
        ]
        
    }
    
}
