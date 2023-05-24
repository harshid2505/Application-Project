//
//  ViewController13.swift
//  Application Project
//
//  Created by HARSHID PATEL on 22/04/23.
//

import UIKit

class ViewController13: UIViewController {
    
    
    @IBOutlet weak var emailLable: UILabel!
    
    @IBOutlet weak var codeTextField: UITextField!
    var a1: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emailLable.text = a1
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController11") as! ViewController11
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController14") as! ViewController14
        navigate.nav = self.navigationController
        present(navigate, animated: false)
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a confirmation code", message: "You'll need to enter a 6-digit confirmation code to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if codeTextField.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            navigation()
        }
    }
    
    @IBAction func receiveCodeButtonAction(_ sender: UIButton) {
        navigation2()
    }
}
