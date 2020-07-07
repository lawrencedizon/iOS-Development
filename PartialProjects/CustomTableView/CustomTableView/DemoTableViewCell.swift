//
//  DemoTableViewCell.swift
//  CustomTableView
//
//  Created by Lawrence Dizon on 7/6/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
