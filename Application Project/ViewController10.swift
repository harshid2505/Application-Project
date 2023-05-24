//
//  ViewController10.swift
//  Application Project
//
//  Created by HARSHID PATEL on 21/04/23.
//

import UIKit

class ViewController10: UIViewController {

    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController11") as! ViewController11
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController12") as! ViewController12
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation3(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
    
//    func textFieldDidChangeSelection(_ textField: UITextField){
//        if (mobileNumberTextField.text?.count)! >= 1{
//            self.nextButton.isEnabled = true
//        }
//        else {
//            self.nextButton.isEnabled = false
//        }
//    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a mobile number", message: "You'll need to enter a 10 digit number to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    func showAlert2(){
        let alert = UIAlertController.init(title: "Already have an account?", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Continue creating account", style: .default,handler: { _ in
            self.dismiss(animated: false)
        }))
        
        alert.addAction(UIAlertAction(title: "Log in", style: .cancel,handler: { _ in
            self.navigation3()
        }))
        
        present(alert, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if (mobileNumberTextField.text?.count)! <= 9{
            showAlert()
        }
        else{
            navigation()
        }
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        navigation2()
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
}
