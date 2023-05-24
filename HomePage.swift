//
//  HomePage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 27/04/23.
//

import UIKit

class HomePage: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tbView: UITableView!
    
    var selectCell = -1
    //var arr = Array<Int>()
    
    var image = [UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "dharuPost 1"),UIImage(named: "jonathnPost"),UIImage(named: "komalPost"),UIImage(named: "monil"),UIImage(named: "subhmanPost"),UIImage(named: "jenishPost"),UIImage(named: "bachuPost2"),UIImage(named: "khantilPost"),UIImage(named: "viratPost"),UIImage(named: "urmitPost"),UIImage(named: "viratPost2"),UIImage(named: "vivekPost"),UIImage(named: "bachuPost")]
    
    var dpImage = [UIImage(named: "harshid"),UIImage(named: "harshid"),UIImage(named: "dharuDP"),UIImage(named: "jonathnDP"),UIImage(named: "komalDP"),UIImage(named: "monilDP"),UIImage(named: "shubmanDP"),UIImage(named: "jenishDP"),UIImage(named: "bachuDP"),UIImage(named: "khantilDP"),UIImage(named: "viratDP"),UIImage(named: "urmitDP"),UIImage(named: "viratDP"),UIImage(named: "vivekDP"),UIImage(named: "bachuDP")]
    
    var name = ["monil_4242","_harshid_xxv","_dhartiii_25","ig_jonathn05","komal_patel_17","monil_4242","shubmangill","jenish_18","_bachuuu","khantil_patel","virat.kohli_18","urmit_vaddoriya","virat.kohli_18","vicky_rudakiya","_bachuuu"]
    
    var blueTick = [UIImage(named: "blueTick"),UIImage(named: "blueTick"),UIImage(named: ""),UIImage(named: "blueTick"),UIImage(named: ""),UIImage(named: ""),UIImage(named: "blueTick"),UIImage(named: ""),UIImage(named: ""),UIImage(named: ""),UIImage(named: "blueTick"),UIImage(named: ""),UIImage(named: "blueTick"),UIImage(named: ""),UIImage(named: "")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! myTableViewCell
            
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell2", for: indexPath) as! myTableViewCell2
            cell.postImage.image = image[indexPath.row]
            cell.dpImage.image = dpImage[indexPath.row]
            cell.dpImage.layer.backgroundColor = UIColor.gray.cgColor
            cell.dpImage.layer.cornerRadius = cell.dpImage.frame.width/2
            cell.nameLabel.text = name[indexPath.row]
            cell.blueTickImage.image = blueTick[indexPath.row]
            if selectCell == indexPath.row{
                cell.likeButtonn.setImage(UIImage(named: "likeFillButton"), for: .normal)
                cell.a = 0
            }
            else{
                cell.likeButtonn.setImage(UIImage(named: "likeButton"), for: .normal)
                cell.a = 1
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 160
        }
        else{
            return 550
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tbView.reloadData()
       selectCell = indexPath.row
      

        //arr.append(selectCell)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "chatePage") as! chatePage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func chateButtonAction(_ sender: UIButton) {
        navigation()
    }
}
