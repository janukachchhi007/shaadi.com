//
//  ProfilePageTabBar.swift
//  shaadi.com
//
//  Created by R94 on 09/06/23.
//

import UIKit

class ProfilePageTabBar: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var tb: UITableView!
    @IBOutlet weak var img: UIImageView!
    var lebelName = ["Max 21-25 Yrs","Max 25-30 Yrs","Max 30-35 Yrs","Max 35-40 Yrs","Max 40-45 Yrs","Max 45-50 Yrs","Max 50-55 Yrs","Max 55-60 Yrs","Max 60-65 Yrs","Max 65-70 Yrs"]
    var selectcell = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.cornerRadius = img.frame.width/2

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lebelName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TableView1
        cell.ageNbrLabel.text = lebelName[indexPath.row]
        
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
        return 70
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tb.reloadData()
        selectcell = indexPath.row
    }
    

}
