//
//  profilePage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 27/04/23.
//

import UIKit

class profilePage: UIViewController {

    @IBOutlet weak var dpImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dpImage.layer.cornerRadius = dpImage.frame.size.width/2
    }

}
