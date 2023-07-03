//
//  chatInPage.swift
//  Application Project
//
//  Created by HARSHID PATEL on 28/05/23.
//

import UIKit

class chatInPage: UIViewController {

    @IBOutlet weak var dpImage: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var nameLable2: UILabel!
    
    @IBOutlet weak var msgTaxtField: UITextField!
    
    var dp = UIImage()
    var name = String()
    var name2 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        // Do any additional setup after loading the view.
        dpImage.image = dp
        nameLable.text = name
        nameLable2.text = name2
        
        dpImage.layer.cornerRadius = dpImage.frame.width/2
    }
    
       private func initialSetup(){
           self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeryoard)))
           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(Notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
           
       }
       
       @objc private func hideKeryoard(){
           self.view.endEditing(true)
           
       }
       @objc private func keyboardWillShow(Notification : NSNotification){
           if let keyboardFrame : NSValue = Notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
               let keyboardHeight = keyboardFrame.cgRectValue.height
               let bottomSpace = self.view.frame.height - (msgTaxtField.frame.origin.y + msgTaxtField.frame.height)
               self.msgTaxtField.frame.origin.y -= keyboardHeight - bottomSpace + 10
           }
       }
       @objc private func keyboardWillHide(){
           self.msgTaxtField.frame.origin.y = 730
           //            dismiss(animated: true)
       }
       deinit{
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
       }
    
    func navigation1(){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "chatePage") as! chatePage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        navigation1()
    }
}
