//
//  ViewController5.swift
//  Application Project
//
//  Created by HARSHID PATEL on 14/04/23.
//

import UIKit

class ViewController5: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var lb1 = ["Get code or link via email","Get code or link via SMS","Enter password to log in"]
    var lb2 = ["*@gmail.com","+** ***** ***60",""]
    
    @IBOutlet weak var tableView: UITableView!
    var selectCell = 0

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var userNameLable: UILabel!
    
    var a1: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imgView.layer.cornerRadius = imgView.frame.size.width/2
        userNameLable.text = a1
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lb1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.lable1.text = lb1[indexPath.row]
        cell.lable2.text = lb2[indexPath.row]
        
        if selectCell == indexPath.row{
            cell.redioButton.image = UIImage(systemName: "circle.inset.filled")
        }
        else{
            cell.redioButton.image = UIImage(systemName: "circle")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        selectCell = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(navigate, animated: true)

    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        
        if selectCell == 1{
            navigation()
        }
        else if selectCell == 2{
            navigation2()
        }
    }
}
