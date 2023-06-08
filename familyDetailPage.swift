//
//  familyDetailPage.swift
//  shaadi.com
//
//  Created by R94 on 08/06/23.
//

import UIKit

class familyDetailPage: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var sisterTextfild: UITextField!
    @IBOutlet weak var fatherTextFild: UITextField!
    @IBOutlet weak var motherTextFild: UITextField!
    @IBOutlet weak var brotherTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        if motherTextFild.text == "" && fatherTextFild.text == "" && sisterTextfild.text == "" && brotherTextFild.text == ""
        {
            showalert(tital: "Enter Your Family Details")
        }
        else if motherTextFild.text == ""
        {
            showalert(tital: "Enter Your Mother Details")
        }
        else if fatherTextFild.text == ""
        {
            showalert(tital: "Enter Your Father Details")
        }
        else if sisterTextfild.text == ""
        {
            showalert(tital: "Enter Your Sister Details")
        }
        else if brotherTextFild.text == ""
        {
            showalert(tital: "Enter Your Brother Details")
        }
        else
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "tabBar") as! tabBar
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
