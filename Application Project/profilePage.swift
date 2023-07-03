//
//  profilePage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 27/04/23.
//

import UIKit

class profilePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var dpImage: UIImageView!
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var img5: UIImageView!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    var dp = [UIImage(named: "mummyDp"),UIImage(named: "frndDp"),UIImage(named: "brotherDp"),UIImage(named: "meDp"),UIImage(named: "addHighlight")]
    
    var name = ["Mummy😘","Frnd❤️","Brother😇","Me💜","New"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dpImage.layer.cornerRadius = dpImage.frame.size.width/2
        img2.layer.backgroundColor = UIColor.black.cgColor
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dp.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "highlightCell", for: indexPath) as! highlight1CollectionViewCell
        cell.dpImage.layer.cornerRadius = cell.dpImage.frame.size.width/2
//        cell.dpImage.layer.borderColor = UIColor.black.cgColor
//        cell.dpImage.layer.borderWidth = 1
        cell.dpImage.image = dp[indexPath.row]
        cell.nameLb.text = name[indexPath.row]
        return cell
    }
    
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        return CGSize(width: 100, height: 128)
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0{
            img1.image = UIImage(named: "meDp")
            img2.image = UIImage(named: "me2")
            img3.image = UIImage(named: "harshid")
            img4.image = UIImage(named: "me1")
            img5.image = UIImage(named: "")
        }
        else{
            img1.image = UIImage(named: "jonathnDP")
            img2.image = UIImage(named: "jenishDP")
            img3.image = UIImage(named: "khantilPost")
            img4.image = UIImage(named: "monilDP")
            img5.image = UIImage(named: "vivekDP")
        }
    }
}
