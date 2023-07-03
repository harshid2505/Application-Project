//
//  ViewController15.swift
//  Application Project
//
//  Created by HARSHID PATEL on 24/04/23.
//

import UIKit

class ViewController15: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController16") as! ViewController16
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a 6 letters password", message: "This password is too short. Create a longer password with at least and numbers.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
    
//    func textFieldDidChangeSelection(_ textField: UITextField) {
//        if (passwordTextField.text?.count)! >= 6{
//            self.nextButton.isEnabled = true
//        }
//        else{
//            self.nextButton.isEnabled = false
//        }
//    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if passwordTextField.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            SqLite.addData(userName: "", password: passwordTextField.text!, number: 0, email: "")
            navigation()
        }
    }
}
