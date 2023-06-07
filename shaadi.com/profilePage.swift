//
//  profilePage.swift
//  shaadi.com
//
//  Created by R94 on 06/06/23.
//

import UIKit

class profilePage: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var lastNAmeTextFild: UITextField!
    @IBOutlet weak var firstNameTextFild: UITextField!
    @IBOutlet weak var BirthdatetextFild: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = img.frame.width/2
        continueButton.layer.cornerRadius = 25
        continueButton.layer.masksToBounds = true

            createDatePicker()
    }
  func createDatePicker()
    {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBUtton))
        toolbar.setItems([doneButton], animated: true)
        BirthdatetextFild.textAlignment = .center
        BirthdatetextFild.inputAccessoryView = toolbar
        BirthdatetextFild.inputView = datePicker
    }
    @objc func doneBUtton()
    {
        let formet = DateFormatter()
        formet.dateStyle = .medium
        formet.timeStyle = .none
        
        BirthdatetextFild.text = formet.string(from: datePicker.date)
        self.view.endEditing(true)
        
        
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        if firstNameTextFild.text == "" && lastNAmeTextFild.text == "" && BirthdatetextFild.text == ""
        {
            showalert(tital: "Enter Your first Name &  Last Name & Date of Birth ")
        }
       else if firstNameTextFild.text == ""
        {
            showalert(tital: "Enter Your First Name")
        }
        else if lastNAmeTextFild.text == ""
        {
            showalert(tital: "Enter Your Last Name")
        }
        else if BirthdatetextFild.text == ""
        {
            showalert(tital: "Enter Your date of Birth")
        }
        else
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "religionPage") as! religionPage
                navigationController?.pushViewController(naviget, animated: true)
        }
        
    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    
}
