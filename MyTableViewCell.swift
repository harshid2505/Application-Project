//
//  MyTableViewCell.swift
//  Application Project
//
//  Created by HARSHID PATEL on 17/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lable1: UILabel!
    
    @IBOutlet weak var lable2: UILabel!
    
    @IBOutlet weak var redioButton: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
