//
//  myTableViewCell.swift
//  Application Project
//
//  Created by HARSHID PATEL on 08/05/23.
//

import UIKit

class myTableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage(named: "harshid"),UIImage(named: "monilDP"),UIImage(named: "jenishDP"),UIImage(named: "yashDP"),UIImage(named: "khantilDP"),UIImage(named: "avadh"),UIImage(named: "urmitDP"),UIImage(named: "jenishJikadra"),UIImage(named: "dharuDP"),UIImage(named: "vicky"),UIImage(named: "vivekDP"),UIImage(named: "komalDP"),UIImage(named: "janviDP"),UIImage(named: "snehaDP")]
    
    var name = ["your story","monil_4242","jenish_18","yash_patel","khantil_patel","avadh_vaddoriya","urmit_vaddoriya","jenish_jikadra","_dhartiii_25","vicky_ahir","vicky_rudakiya","komal_patel","janvi_kachii","__sneha_007"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! myCollectionViewCell
        cell.photo.image = image[indexPath.row]
        cell.photo.layer.backgroundColor = UIColor.black.cgColor
        cell.nameLabel.text = name[indexPath.row]
        cell.photo.layer.cornerRadius = cell.photo.frame.width/2
        cell.myView.layer.cornerRadius = cell.myView.frame.width/2
//        cell.photo.layer.borderWidth = 4
        cell.nameLabel.text = name[indexPath.row]
        //cell.layer.backgroundColor = UIColor.black.cgColor
        let gr = CAGradientLayer()
        gr.colors = [UIColor.orange.cgColor,UIColor.purple.cgColor,UIColor.red.cgColor]
        gr.backgroundColor = layer.backgroundColor
        gr.startPoint = CGPoint(x: 0, y: 0)
        gr.endPoint = CGPoint(x: 1, y: 0)
        gr.frame = cell.myView.layer.bounds
        
        cell.myView.layer.insertSublayer(gr, at: 0)
        cell.myView.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 128)
    }
}
