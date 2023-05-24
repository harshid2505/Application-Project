//
//  ViewController.swift
//  Application Project
//
//  Created by HARSHID PATEL on 13/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
   @IBOutlet weak var newAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cornerRedius()
    }
    
   
    
    func cornerRedius(){
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        
        newAccountButton.layer.cornerRadius = 5
        newAccountButton.layer.masksToBounds = true
        newAccountButton.layer.borderColor = UIColor.gray.cgColor
        newAccountButton.layer.borderWidth = 1
    }
    
    func showAlert(title:String,message:String){
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
    
    func navigation(){
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    func navigation2(){
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    func navigation3(){
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController10") as! ViewController10
        navigationController?.pushViewController(naviget, animated: true)
    }

    @IBAction func loginButtonAction(_ sender: Any) {
        
        if userNameTextField.text == "" && passwordTextField.text == ""{
            showAlert(title: "Error", message: "Plese Enter Your Username & Password.")
        }
        
        else if userNameTextField.text == ""{
            showAlert(title:"Error",message: "Plese Enter Your Username.")
        }
        
        
        
        else if passwordTextField.text == ""{
            showAlert( title:"Erorr",message: "Plese Enter Your Password.")
        }
        
        if userNameTextField.text == "harshid" && passwordTextField.text == "2505"{
            navigation()
        }
        else{
            showAlert(title: "Incorrect Password",message: "The password you entered is incorrect. Plese try again." )
        }
    }
    
    @IBAction func fordetPasswordButtonAction(_ sender: Any) {
            navigation2()
    }
    
    @IBAction func newAccountButtonAction(_ sender: Any) {
        navigation3()
    }
    
}

