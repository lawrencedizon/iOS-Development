//
//  ViewController.swift
//  ReadMe App
//
//  Created by Lawrence Dizon on 7/31/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class LibraryViewController: UITableViewController {

    @IBSegueAction func showDetailView(_ coder: NSCoder) -> DetailViewController? {
        guard let indexPath =  tableView.indexPathForSelectedRow else {
             fatalError("Nothing selected!")
            }
        
        let book = Library.books[indexPath.row]
        return DetailViewController(coder: coder, book: book)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        
        let book = Library.books[indexPath.row]
        
        
        cell.textLabel?.text = book.title
        cell.imageView?.image = book.image
        return cell
    }


}

