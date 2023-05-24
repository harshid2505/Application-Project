//
//  ViewController16.swift
//  Application Project
//
//  Created by HARSHID PATEL on 24/04/23.
//

import UIKit

class ViewController16: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController17") as! ViewController17
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func showAlert2(){
        let alert = UIAlertController.init(title: "Already have an account?", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Continue creating account", style: .default,handler: { _ in
            self.dismiss(animated: false)
        }))
        
        alert.addAction(UIAlertAction(title: "Log in", style: .cancel,handler: { _ in
            self.navigation2()
        }))
        
        present(alert, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigate, animated: true)
    }

    @IBAction func saveButtonAction(_ sender: UIButton) {
        navigation()
    }
    
    @IBAction func notNowButtonAction(_ sender: Any) {
        navigation()
    }
    
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
}
