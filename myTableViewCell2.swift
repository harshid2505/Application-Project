//
//  myTableViewCell2.swift
//  Application Project
//
//  Created by HARSHID PATEL on 09/05/23.
//

import UIKit

class myTableViewCell2: UITableViewCell{
    
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var dpImage: UIImageView!
    
    @IBOutlet weak var likeButtonn: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var blueTickImage: UIImageView!
    
    var a = 1
    var b = 1
//    var image = [UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "harshid")]
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return image.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell2", for: indexPath) as! myTableViewCell2
//        cell.imageView?.image = image[indexPath.row]
//
//        return cell
//    }
    
    
    @IBAction func menuButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func commentButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func shareButtonAction(_ sender: UIButton) {
//       let navigate = 
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        if b == 0{
            saveButton.setImage(UIImage(named: "save"), for: .normal)
            b = 1
        }
        else{
            saveButton.setImage(UIImage(named: "saveFill"), for: .normal)
            b = 0
        }
    }
    
    @IBAction func likeButtonAction(_ sender: UIButton) {
        if a == 0{
            likeButtonn.setImage(UIImage(named: "likeButton"), for: .normal)
            a = 1
        }
        else{
            likeButtonn.setImage(UIImage(named: "likeFillButton"), for: .normal)
            a = 0
        }
    }
    
    
    
}
