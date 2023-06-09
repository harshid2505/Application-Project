//
//  chatTableViewCell.swift
//  Application Project
//
//  Created by HARSHID PATEL on 28/05/23.
//

import UIKit

class chatTableViewCell: UITableViewCell {

    @IBOutlet weak var dpImage: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var msgLable: UILabel!
    
    @IBOutlet weak var msgLable2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
