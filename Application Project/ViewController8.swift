//
//  ViewController8.swift
//  Application Project
//
//  Created by HARSHID PATEL on 19/04/23.
//

import UIKit

class ViewController8: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.layer.cornerRadius = image.frame.height/2
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a password", message: "You'll need to enter a 6 letters password to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        navigationController?.popViewController(animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        navigationController?.pushViewController(navigate, animated: true)
    }

    @IBAction func forgatePasswordButtonAction(_ sender: Any) {
        navigation()
    }
    
    @IBAction func logInButtonAction(_ sender: UIButton) {
        if passwordTextField.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            navigation2()
        }
    }
    
}
