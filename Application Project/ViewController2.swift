//
//  ViewController2.swift
//  Application Project
//
//  Created by HARSHID PATEL on 13/04/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgView.layer.cornerRadius = imgView.frame.size.width/2
//        imgView.layer.backgroundColor = UIColor.black.cgColor
    }
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        navigation()
    }
    
    @IBAction func notNowButtonAction(_ sender: Any) {
        navigation()
    }
    
}
