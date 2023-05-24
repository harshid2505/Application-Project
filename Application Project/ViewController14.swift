//
//  ViewController14.swift
//  Application Project
//
//  Created by HARSHID PATEL on 22/04/23.
//

import UIKit

class ViewController14: UIViewController {
    
    var nav : UINavigationController?
    @IBOutlet weak var popView: UIView!
    
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
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        nav?.pushViewController(navigate, animated: false)
    }
    @IBAction func closeButtonAction(_ sender: UIButton) {
        dismiss(animated: false)
    }
    
    @IBAction func logInButtonAction(_ sender: Any) {
        navigation()
        dismiss(animated: false)
    }
    
    @IBAction func receiveCodeButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
}
