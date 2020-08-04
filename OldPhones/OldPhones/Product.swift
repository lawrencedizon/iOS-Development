//
//  Product.swift
//  OldPhones
//
//  Created by Lawrence Dizon on 8/3/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var cellImageName: String?
    var fullscreenImageName: String?
    
    init(name: String, cellImageName: String, fullscreenImageName: String){
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
}
