//
//  ViewController11.swift
//  Application Project
//
//  Created by HARSHID PATEL on 22/04/23.
//

import UIKit

class ViewController11: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a full name", message: "You'll need to enter a full name to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
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
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController15") as! ViewController15
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        if nameTextField.text == ""{
            showAlert()
        }
        else{
            SqLite.addData(userName: nameTextField.text!, password: "", number: 0, email: "")
            navigation()
        }
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
    
}
