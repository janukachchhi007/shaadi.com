//
//  chatnNaviagtePage.swift
//  shaadi.com
//
//  Created by R94 on 20/06/23.
//

import UIKit

class chatnNaviagtePage: UIViewController {

    @IBOutlet weak var textfild: UITextField!
    @IBOutlet weak var idnameLabel: UILabel!
    @IBOutlet weak var prfileimg: UIImageView!
    var a = String()
    var b = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
       prfileimg.layer.cornerRadius = prfileimg.frame.width/2

        navigationItem.hidesBackButton = true
         prfileimg.image = b
        idnameLabel.text = a
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
                let bottomSpace = self.view.frame.height - (textfild.frame.origin.y + textfild.frame.height)
                self.textfild.frame.origin.y -= keyboardHeight - bottomSpace + 10
            }
        }
        @objc private func keyboardWillHide(){
            self.textfild.frame.origin.y = 730
            //            dismiss(animated: true)
        }
        deinit{
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }

}
