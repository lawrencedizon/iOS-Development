//
//  ViewController.swift
//  CardSlider
//
//  Created by Lawrence Dizon on 7/7/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import CardSlider
import UIKit

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
   
    
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .link
        
        myButton.setTitleColor(.white, for: .normal)
        
        data.append(Item(image: UIImage(named: "dog3")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now"))
        data.append(Item(image: UIImage(named: "dog2")!,
        rating: nil,
        title: "Bookmarks",
        subtitle: "Get excited about bookmarks",
        description: "You can add bookmarks in the app now"))

        data.append(Item(image: UIImage(named: "dog1")!,
        rating: nil,
        title: "Bookmarks",
        subtitle: "Get excited about bookmarks",
        description: "You can add bookmarks in the app now"))

    }
    
    @IBAction func didTapButton(){
        //Present the card slider
        
       
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.modalPresentationStyle = .fullScreen
        vc.dataSource = self
        vc.title = "Welcome"
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
           return data[index]
       }
       
       func numberOfItems() -> Int {
        return data.count
       }


}

