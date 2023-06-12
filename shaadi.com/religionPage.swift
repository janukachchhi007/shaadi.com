//
//  religionPage.swift
//  shaadi.com
//
//  Created by R94 on 06/06/23.
//

import UIKit

class religionPage: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var livingtextfild: UITextField!
    @IBOutlet weak var communityTextFild: UITextField!
    @IBOutlet weak var religionTextfild: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = img.frame.width/2
        continueButton.layer.cornerRadius = 25
        continueButton.layer.masksToBounds = true
        
    }
 
    @IBAction func continueButtonAction(_ sender: Any) {
//        if religionTextfild.text == "" && communityTextFild.text == "" && livingtextfild.text == ""
//        {
//            showalert(tital: "Enter Your Religion & Enter Your Community")
//        }
//       else if religionTextfild.text == ""
//        {
//            showalert(tital: "Enter Your Religion")
//        }
//        else if communityTextFild.text == ""
//        {
//            showalert(tital: "Enter Your Community")
//        }
//        else if livingtextfild.text == ""
//        {
//            showalert(tital: "Enter Your Living In")
//        }
//        else
//        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "EmailPage") as! EmailPage
                navigationController?.pushViewController(naviget, animated: true)
       // }
    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
