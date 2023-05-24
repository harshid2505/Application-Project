//
//  ViewController20.swift
//  Application Project
//
//  Created by HARSHID PATEL on 25/04/23.
//

import UIKit

class ViewController20: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Already have an account?", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Continue creating account", style: .default,handler: { _ in
            self.dismiss(animated: false)
        }))
        
        alert.addAction(UIAlertAction(title: "Log in", style: .cancel,handler: { _ in
            self.navigation2()
        }))
        
        present(alert, animated: true)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigate, animated: true)
    }

    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert()
    }
    
    
    @IBAction func agreeButtonAction(_ sender: UIButton) {
        navigation()
    }
}
