//
//  galleryPage.swift
//  shaadi.com
//
//  Created by R94 on 08/06/23.
//

import UIKit

class galleryPage: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImg.layer.cornerRadius = profileImg.frame.size.height/2
        addButton .layer.cornerRadius = 18
        addButton.layer.masksToBounds = true
        continueButton.layer.cornerRadius = 18
        continueButton.layer.masksToBounds = true
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        profileImg.image = info[.editedImage] as! UIImage
        dismiss(animated: true)
    }
    
    @IBAction func addGalleryButtonAction(_ sender: Any) {
        
        let alert = UIAlertController.init(title: "", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default))
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default ,handler: { alert in
            let img = UIImagePickerController()
            img.delegate = self
            img.sourceType = .photoLibrary
            img.allowsEditing = true
            self.present(img, animated: true)
        }))
        present(alert, animated: true)
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "familyDetailPage") as! familyDetailPage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    
}
