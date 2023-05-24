//
//  ViewController9.swift
//  Application Project
//
//  Created by HARSHID PATEL on 20/04/23.
//

import UIKit

class ViewController9: UIViewController {

    @IBOutlet weak var redioButton: UIButton!
    @IBOutlet weak var newPasswordTextField: UITextField!
    var a = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redioButton.setImage(UIImage(systemName: "circle"), for: .normal)

        // Do any additional setup after loading the view.
        //redioButton.imageView.
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a new password", message: "This password is too short. Create a longer password with at least and numbers.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func redioButtonAction(_ sender: UIButton) {
        if a == 1{
            redioButton.setImage(UIImage(systemName: "circle"), for: .normal)
            a = 0
        }
        else{
            redioButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
            a = 1
        }
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        if newPasswordTextField.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            navigation()
        }
    }
}
