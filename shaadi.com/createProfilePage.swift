//
//  createProfilePage.swift
//  shaadi.com
//
//  Created by R94 on 08/06/23.
//

import UIKit

class createProfilePage: UIViewController {
    
    @IBOutlet weak var createProfileButton: UIButton!
    @IBOutlet weak var qualificationTextFild: UITextField!
    @IBOutlet weak var workWithTextfild: UITextField!
    @IBOutlet weak var workAsTextFild: UITextField!
    @IBOutlet weak var annualIncomeTextFild: UITextField!
    @IBOutlet weak var collegeaatenedTextFild: UITextField!
    @IBOutlet weak var currentCompanyTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createProfileButton.layer.cornerRadius = 18
        createProfileButton.layer.masksToBounds = true
    }
    
    @IBAction func createProfileButtonAction(_ sender: Any) {
        //
        //        if qualificationTextFild.text == "" && collegeaatenedTextFild.text == "" && workWithTextfild.text == ""  && workAsTextFild.text == "" && annualIncomeTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Highest Qualification & Work With & Work As & Annual income")
        //        }
        //        else if collegeaatenedTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Collage Atended")
        //        }
        //        else if qualificationTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Highest Qualification")
        //        }
        //        else if workWithTextfild.text == ""
        //        {
        //            showalert(tital: "Enter Your  Work With")
        //        }
        //        else if workAsTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Work As ")
        //        }
        //        else if currentCompanyTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Current Company Name")
        //        }
        //        else if annualIncomeTextFild.text == ""
        //        {
        //            showalert(tital: "Enter Your Annual income")
        //        }
        //        else
        //        {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "galleryPage") as! galleryPage
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
