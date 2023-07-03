//
//  storyPage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 21/06/23.
//

import UIKit

class storyPage: UIViewController {

    @IBOutlet weak var dpImag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dpImag.layer.cornerRadius = dpImag.frame.width/2

        // Do any additional setup after loading the view.
    }

}
