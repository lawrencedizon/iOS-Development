//
//  ViewController.swift
//  SideBarMenu
//
//  Created by Lawrence Dizon on 7/6/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import SideMenu
import UIKit

class ViewController: UIViewController {
    
    var menu: SideMenuNavigationController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    @IBAction func didTapMenu(){
        present(menu!, animated: true)
        
    }


}

class MenuListController: UITableViewController {
    var items = ["First","Second","Third","fourth","Fifth"]
    
    let darkColor = UIColor(displayP3Red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //do something
    }

}



