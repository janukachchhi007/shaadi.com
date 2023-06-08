//
//  registeringPage.swift
//  shaadi.com
//
//  Created by R94 on 07/06/23.
//

import UIKit

class registeringPage: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var liveInTextFild: UITextField!
    @IBOutlet weak var cityLiveTextFild: UITextField!
    @IBOutlet weak var maritalTextFild: UITextField!
    @IBOutlet weak var dietTextFild: UITextField!
    @IBOutlet weak var heightTextFild: UITextField!
    @IBOutlet weak var subCommunityTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 18
        continueButton.layer.masksToBounds = true
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        if liveInTextFild.text == "" && cityLiveTextFild.text == "" && maritalTextFild.text == "" && dietTextFild.text == ""
            && heightTextFild.text == ""
            && subCommunityTextFild.text == ""
        {
            showalert(tital: "Enter Your State Your Live & City Your Live & Your Marital Status & Your diet & Your Height & Your Sub Community ")
        }
        else if cityLiveTextFild.text == ""
        {
            showalert(tital: "Enter Your State Your Live")
        }
        else if cityLiveTextFild.text == ""
        {
            showalert(tital: "Enter Your City Your Live ")
        }
        else if maritalTextFild.text == ""
        {
            showalert(tital: "Enter Your Your Marital Status")
        }
        else if dietTextFild.text == ""
        {
            showalert(tital: "Enter Your diet ")
        }
        else if heightTextFild.text == ""
        {
            showalert(tital: "Enter Your Height")
        }
        else if subCommunityTextFild.text == ""
        {
           showalert(tital: "Enter Your Sub Community ")
        }
        else
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "createProfilePage") as! createProfilePage
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
