//
//  ViewController17.swift
//  Application Project
//
//  Created by HARSHID PATEL on 24/04/23.
//

import UIKit

class ViewController17: UIViewController {

    @IBOutlet weak var birthDateField: UITextField!
    
    let datePiker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createDatePiker()
    }
    
    func createToolBar() -> UIToolbar{
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        
        toolBar.setItems([doneButton], animated: true)
        
        return toolBar
    }
    
    func createDatePiker(){
        datePiker.preferredDatePickerStyle = .wheels
        datePiker.datePickerMode = .date
        birthDateField.textAlignment = .center
        birthDateField.inputView = datePiker
        birthDateField.inputAccessoryView = createToolBar()
    }
    
    @objc func donePress(){
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .medium
        dateFormater.timeStyle = .none
        self.birthDateField.text = dateFormater.string(from: datePiker.date)
        self.view.endEditing(true)
    }
    
    func navigation(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController19") as! ViewController19
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "Enter a date of birth", message: "You'll need to enter a Date of Birth to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default))
        present(alert, animated: true)
    }
    
    func navigation2(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController18") as! ViewController18
       present(navigate, animated: false)
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

    @IBAction func dateOfBirthButtonAction(_ sender: UIButton) {
        navigation2()
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        showAlert2()
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if birthDateField.text == ""{
            showAlert()
        }
        else{
            navigation()
        }
    }
}
