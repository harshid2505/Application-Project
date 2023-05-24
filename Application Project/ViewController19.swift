//
//  ViewController19.swift
//  Application Project
//
//  Created by HARSHID PATEL on 25/04/23.
//

import UIKit

class ViewController19: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a Username", message: "You'll need to enter a username to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController20") as! ViewController20
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
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if userNameTextField.text == ""{
            showAlert()
        }
        else{
            navigation()
        }
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
    
}
