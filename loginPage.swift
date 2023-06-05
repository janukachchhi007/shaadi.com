//
//  loginPage.swift
//  shaadi.com
//
//  Created by R94 on 05/06/23.
//

import UIKit

class loginPage: UIViewController {
    
    @IBOutlet weak var appLogo: UIImageView!
    @IBOutlet weak var mobileNoLabel: UILabel!
    @IBOutlet weak var mobileNOTextFild: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextFild: UITextField!
    @IBOutlet weak var LogInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appLogo.layer.cornerRadius = appLogo.frame.width/2
        LogInButton.layer.cornerRadius = 25
        LogInButton.layer.masksToBounds = true
        
    }
    
    @IBAction func loginWithOTPButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func forgetPWButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func LoginBUttonAction(_ sender: Any) {
        
    }
    
}
