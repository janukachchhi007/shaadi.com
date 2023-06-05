//
//  emailpagepop.swift
//  shaadi.com
//
//  Created by R94 on 01/06/23.
//

import UIKit

class emailpagepop: UIViewController{
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var popview: UIView!
    
    @IBOutlet weak var cv: UICollectionView!
    
    var mynev : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImg.layer.cornerRadius = profileImg.frame.width/2
//        mselfbutton.layer.borderWidth = 2
//        mselfbutton.layer.borderColor = UIColor.black.cgColor
//        mselfbutton.layer.cornerRadius = 18
//        mselfbutton.layer.masksToBounds = true
//        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
}
