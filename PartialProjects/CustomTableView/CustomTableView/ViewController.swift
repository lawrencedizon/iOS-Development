//
//  ViewController.swift
//  CustomTableView
//
//  Created by Lawrence Dizon on 7/6/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let myData = ["first","second","third","fourth","fifth"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //In order to use the xib, we need to register the nib.
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //TableView func
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .red
        return cell
    }


}

