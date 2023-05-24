//
//  ViewController4.swift
//  Application Project
//
//  Created by HARSHID PATEL on 14/04/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var userNameLable: UILabel!
    
    @IBOutlet weak var searchByButton: UIButton!
    
    var a = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func searchByButtonAction(_ sender: UIButton) {
        if a == 0 {
            userNameTextField.placeholder = "Username or email address"
            searchByButton.setTitle("Search by mobile number instead", for: .normal)
            userNameLable.text = "Enter your username or email address."
            a = 1
        }
        else {
            userNameTextField.placeholder = "Mobile number"
            searchByButton.setTitle("Search by email address instead", for: .normal)
            userNameLable.text = "Enter your mobile number."
            a=0
        }
    }
    
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a response", message: "You'll need to enter a mobile number or email address to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ViewController5
        a.a1 = userNameTextField.text!
    }
    
    @IBAction func findAccountButtonAction(_ sender: UIButton) {
        if userNameTextField.text == ""{
           showAlert()
        }
        else{
           savealert()
        }
    }
    
    func savealert(){
        let alert = UIAlertController.init(title: "Username Save", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.userNameTextField.text!, forKey: "")
            self.performSegue(withIdentifier: "cell", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
}
