//
//  emailpagepop.swift
//  shaadi.com
//
//  Created by R94 on 01/06/23.
//

import UIKit

class emailpagepop: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tb: UITableView!
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var popview: UIView!
    
    @IBOutlet weak var continueBUtton: UIButton!
    var lebelName = ["My Self","My son","My daughter","My Brother","My sister","My Friend","My relative"]
    var selectcell = -1
    var mynev : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImg.layer.cornerRadius = profileImg.frame.width/2
        continueBUtton.layer.cornerRadius = 18
        continueBUtton.layer.masksToBounds = true
        
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        let n = storyboard? .instantiateViewController(withIdentifier: "profilePage") as! profilePage
        mynev?.pushViewController(n, animated: true)
        dismiss(animated: false)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lebelName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! genderTableViewCell
        cell.name.text = lebelName[indexPath.row]
        
        if selectcell == indexPath.row
        {
            cell.redioButton.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else
        {
            cell.redioButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tb.reloadData()
        selectcell = indexPath.row
    }
}
