//
//  ViewController18.swift
//  Application Project
//
//  Created by HARSHID PATEL on 25/04/23.
//

import UIKit

class ViewController18: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }

    @IBAction func closeButtonAction(_ sender: UIButton) {
        dismiss(animated: false)
    }
    
}
