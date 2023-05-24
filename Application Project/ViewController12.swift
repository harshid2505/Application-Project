//
//  ViewController12.swift
//  Application Project
//
//  Created by HARSHID PATEL on 22/04/23.
//

import UIKit

class ViewController12: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    func navigation(){
//        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController13") as! ViewController13
//        navigationController?.pushViewController(navigate, animated: true)
//    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController10") as! ViewController10
        navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ViewController13
        a.a1 = emailTextField.text!
    }

    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a email address", message: "You'll need to enter a email address to continue.", preferredStyle: .alert)
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
    
    func navigation3(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func savealert(){
        let alert = UIAlertController.init(title: "Email address is Save", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.emailTextField.text!, forKey: "")
            self.performSegue(withIdentifier: "cell", sender: self)
        }))
        present(alert, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if emailTextField.text == ""{
            showAlert()
        }
        else{
            savealert()
        }
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        navigation2()
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
}
