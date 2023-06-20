//
//  ProfilePageTabBar.swift
//  shaadi.com
//
//  Created by R94 on 09/06/23.
//

import UIKit

class ProfilePageTabBar: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tb7: UITableView!
    @IBOutlet weak var tb6: UITableView!
    @IBOutlet weak var tb5: UITableView!
    @IBOutlet weak var tb1: UITableView!
    @IBOutlet weak var tb: UITableView!
    @IBOutlet weak var tb3: UITableView!
    @IBOutlet weak var tb4: UITableView!
    @IBOutlet weak var img: UIImageView!
    var lebelName = ["Max 21-30 Yrs","Max 31-40 Yrs","Max 41-50 Yrs","Max 51-60 Yrs","Max 61-70 Yrs"]
    var height = ["Max 5'0 - 5'5","Max 5'5 - 6'0","Max 6'0 - 6'5","Max 6'5 - 7'0","Max 7'0 - 7'5"]
    var marital = ["Doesn't Matter","Never Married","Divorced","Widowed","Awaiting Divorce"]
    var religion = ["Hindu","Sikh","Chistian","Parsi","Other"]
    var community = ["Patel","Patel-kadva","patel- Leva","Patel-All","Other"]
    var country = ["India","Austrelia","Caneda","US","Other"]
    var state = ["Gujarat","Maharastra","Rajasthan","Madhaypardes","Other"]
    var selectcell = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        img.layer.cornerRadius = img.frame.width/2
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lebelName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tb
        {
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
        else if tableView == tb1
        {
            let cell1 = tb1.dequeueReusableCell(withIdentifier: "cell1",for: indexPath) as! TableView2
            cell1.heightLabel.text = height[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell1.redioImg.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell1.redioImg.image = UIImage(systemName: "circle")
            }
            return cell1
            
        }
        else if tableView == tb3
        {
            let cell3 = tb3.dequeueReusableCell(withIdentifier: "cell3",for: indexPath) as! TableView3
            
            cell3.marrigeLabel.text = marital[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell3.img.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell3.img.image = UIImage(systemName: "circle")
            }
            return cell3
            
        }
        else if tableView == tb4
        {
            let cell4 = tb4.dequeueReusableCell(withIdentifier: "cell4",for: indexPath) as! TableView4
            
            cell4.religionLabel.text = religion[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell4.imgTik.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell4.imgTik.image = UIImage(systemName: "circle")
            }
            return cell4
            
        }
        else if tableView == tb5
        {
            let cell5 = tb5.dequeueReusableCell(withIdentifier: "cell5",for: indexPath) as! TableView5
            
            cell5.communityLabel.text = community[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell5.img.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell5.img.image = UIImage(systemName: "circle")
            }
            return cell5
            
        }
        else if tableView == tb6
        {
            let cell6 = tb6.dequeueReusableCell(withIdentifier: "cell6",for: indexPath) as! TableView6
            
            cell6.countryName.text = country[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell6.imgTik.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell6.imgTik.image = UIImage(systemName: "circle")
            }
            return cell6
            
        }
        else if tableView == tb7
        {
            let cell7 = tb7.dequeueReusableCell(withIdentifier: "cell7",for: indexPath) as! TableView7
            
            cell7.stateName.text = state[indexPath.row]
            
            if selectcell == indexPath.row
            {
                cell7.imgTik.image = UIImage(systemName: "checkmark.circle.fill")
            }
            else
            {
                cell7.imgTik.image = UIImage(systemName: "circle")
            }
            return cell7
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tb
        {
            tb.reloadData()
            selectcell = indexPath.row
        }
        else if tableView == tb1
        {
            tb1.reloadData()
            selectcell = indexPath.row
        }
        else if tableView == tb3
        {
            tb3.reloadData()
            selectcell = indexPath.row
        }
        else if tableView == tb4
        {
            tb4.reloadData()
            selectcell = indexPath.row
        }
        else if tableView == tb5
        {
            tb5.reloadData()
            selectcell = indexPath.row
        }
        
    }
    
    
}
