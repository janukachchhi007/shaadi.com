//
//  EmailPage.swift
//  shaadi.com
//
//  Created by R94 on 07/06/23.
//

import UIKit

class EmailPage: UIViewController {
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var mobilelabel: UILabel!
    @IBOutlet weak var emailTextFild: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var mobileTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 25
        submitButton.layer.masksToBounds = true
    }
    
    @IBAction func submitButtonAction(_ sender: Any) {
        //        if emailTextFild.text == "" && mobileTextFild.text?.count ?? 0 != 10
        //        {
        //            showalert(tital: "Enter Your Email Id & Mobile Number")
        //        }
        //        else if emailTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Email Id")
        //        }
        //        else if mobileTextFild.text?.count ?? 0 != 10
        //        {
        //            showalert(tital: "Enter Your Mobile Number ")
        //        }
        //        else
        //        {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "registeringPage") as! registeringPage
        navigationController?.pushViewController(naviget, animated: true)
        //  }
    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
