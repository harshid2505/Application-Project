//
//  chatePage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 24/05/23.
//

import UIKit

class chatePage: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var dpImage = [UIImage(named: "dharuDP"),UIImage(named: "monilDP"),UIImage(named: "komalDP"),UIImage(named: "jenishDP"),UIImage(named: "janviDP"),UIImage(named: "jenishJikadra"),UIImage(named: "hashuDP"),UIImage(named: "kevalDP"),UIImage(named: "harshDP"),UIImage(named: "tusharDP"),UIImage(named: "yagnikDP"),UIImage(named: "asthaDP")]
    
    var name = ["D H A R T I ❤️","MONIL ☺️","Komal Patel","|| Jennu ||","🍁||J@𝔫U__🥂||🍁","∼⋅𝑗𝑗 º","💜♡+:.hasu.:+♡💜","♕ 𝓂 R.tǟl∀ ♕","Harsh Rathod","Tushar Patel 🦁","❤️ YAGNIK ❤️",":)@$ℇ@:)"]
    
    var name2 = ["_dhartiraiyanii","monil_patel","komal_patel_17","mr.navadiya_18","__prety_girl_007","jenish_.05_","mr_harsh_124","keval_tala","mr._.rathod._.777","_davra_official_","mr_kalathiya_","a__vaddoriya_"]
    
    var msg = ["Sent 34m ago","Ok . 2h","Seen 17h ago","","Mentioned you in their stor... 2d","Mentioned you in a story . 3h","Sent a reel by aleeywaze... 3d","Hmmm . 3d","","Seen Friday","Liked a message . 3d","Liked a message . 4d"]
    
    var msg2 = ["","","","Sent a reel by vivekkushw... 21h","","","","","5 new messages . 2h","","",""]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dpImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! chatTableViewCell
        
        cell.dpImage.image = dpImage[indexPath.row]
        cell.dpImage.layer.cornerRadius = cell.dpImage.frame.width/2
        cell.nameLable.text = name[indexPath.row]
        cell.msgLable.text = msg[indexPath.row]
        cell.msgLable2.text = msg2[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func navigation(dpImage: UIImage,name: String,name2: String){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "chatInPage") as! chatInPage
        navigate.dp = dpImage
        navigate.name = name
        navigate.name2 = name2
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation1(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "HomePage") as! HomePage
        navigationController?.pushViewController(navigate, animated: true)
    }

    @IBAction func backButtonAction(_ sender: UIButton) {
        navigation1()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(dpImage: dpImage[indexPath.row]!, name: name[indexPath.row], name2: name2[indexPath.row])
    }
}
