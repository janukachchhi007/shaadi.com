//
//  ViewController.swift
//  shaadi.com
//
//  Created by R94 on 31/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var mobileButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailButton.layer.cornerRadius = 25
        emailButton.layer.masksToBounds = true
        mobileButton.layer.cornerRadius = 25
        mobileButton.layer.masksToBounds = true
        googleButton.layer.cornerRadius = 25
        googleButton.layer.masksToBounds = true
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.cornerRadius = 18
        loginButton.layer.masksToBounds = true
        
    }
    
    @IBAction func emailButtonAction(_ sender: UIButton) {
        
        naviget()
    }
    
    func naviget()
    {
        let n = storyboard? .instantiateViewController(withIdentifier: "emailpagepop") as! emailpagepop
        n.mynev = self.navigationController
        present(n, animated: false)
    }
    
    @IBAction func mobileButtonaction(_ sender: Any)
    {
        naviget()
    }
    @IBAction func googleButtonAction(_ sender: Any) {
        
        let n = storyboard? .instantiateViewController(withIdentifier: "mobilePage") as! mobilePage
        n.mynev = self.navigationController
        present(n, animated: false)
       
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(identifier: "loginPage")as! loginPage
        navigationController?.pushViewController(n, animated: true)

    }
    
}

