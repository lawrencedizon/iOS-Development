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
        
        let book = Library.books[indexPath.row - 1]
        return DetailViewController(coder: coder, book: book)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    // MARK:- Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count + 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath == IndexPath(row: 0, section: 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewBookCell", for: indexPath)
            return cell
        }
        
        
        
        
        
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: "\(BookCell.self)", for: indexPath) as? BookCell
            else {
                fatalError("Could not create BookCell")
        }
        
        
        let book = Library.books[indexPath.row - 1]
        
        cell.titleLabel.text = book.title
        cell.authorLabel.text = book.author
        cell.bookThumbnail.image = book.image
        cell.bookThumbnail.layer.cornerRadius = 12
        return cell
    }


}

