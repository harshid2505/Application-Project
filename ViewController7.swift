//
//  ViewController7.swift
//  Application Project
//
//  Created by HARSHID PATEL on 18/04/23.
//

import UIKit

class ViewController7: UIViewController {

    @IBOutlet weak var codeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a code", message: "You'll need to enter a 6 letters code to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController9") as! ViewController9
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        if codeTextField.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            navigation()
        }
    }
    
}
