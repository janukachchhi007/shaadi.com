//
//  mobilePage.swift
//  shaadi.com
//
//  Created by R94 on 01/06/23.
//

import UIKit

class mobilePage: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    
    
    @IBOutlet weak var shaadiLogo: UIImageView!
    @IBOutlet weak var tb: UITableView!
    @IBOutlet weak var googleView: UIView!
    
    var arr = ["janu Kachchi","Add another account"]
    var arr2 = ["janukachchhi2@gmail.com",""]
    var photo = [UIImage(systemName: "j.circle.fill"),UIImage(systemName: "person.badge.plus.fill")]
    var mynev : UINavigationController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleView.layer.cornerRadius = 20
        googleView.layer.masksToBounds = true
        shaadiLogo.layer.cornerRadius = shaadiLogo.frame.width/2
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveLinear) {
            self.view.alpha = 1
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! googlePageTableView
        cell.fullNameLabel.text = arr[indexPath.row]
        cell.gmailNameLabel.text = arr2[indexPath.row]
        cell.img.image = photo[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if arr[indexPath.row] == "janu Kachchi"
        {
            naviget()
            
            dismiss(animated: false, completion: nil)
        }
    }
    func naviget()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "emailpagepop") as! emailpagepop
        mynev?.pushViewController(naviget, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
