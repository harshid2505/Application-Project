//
//  sharePage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 17/05/23.
//

import UIKit

class sharePage: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
    @IBOutlet weak var sharetv: UITableView!
    
    @IBOutlet weak var pop: UIView!
    
    var selectCell = -1
    
    var dpImage = [UIImage(named: "harshid"),UIImage(named: "viratDP"),UIImage(named: "bachuDP"),UIImage(named: "dharuDP"),UIImage(named: "jonathnDP"),UIImage(named: "komalDP"),UIImage(named: "monilDP"),UIImage(named: "shubmanDP")]
    
    var name = ["monil_4242","virat.kohli_11","_bachuuu","_dhartii_25","ig_jonathann","komal_patel_17","monil_4242","shubmangilll.21"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        pop.layer.cornerRadius = 10
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dpImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "shareCell", for: indexPath) as! shareTableViewCell
            cell.dpImageView.layer.cornerRadius = cell.dpImageView.frame.width/2
            cell.dpImageView.backgroundColor = .black
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "shareCell2", for: indexPath) as! shareTableViewCell2
            cell.dpImgView.layer.cornerRadius = cell.dpImgView.frame.width/2
            cell.dpImgView.backgroundColor = .black
            cell.dpImgView.image = dpImage[indexPath.row]
            cell.nameLb.text = name[indexPath.row]
            
            if selectCell == indexPath.row{
                cell.sellectButton.setImage(UIImage(named: "checkmark.circle.fill"), for: .normal)
            }
            else{
                cell.sellectButton.setImage(UIImage(named: "circle"), for: .normal)
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 80
        }
        else{
            return 80
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sharetv.reloadData()
        selectCell = indexPath.row
    }
}
