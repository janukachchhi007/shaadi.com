//
//  ChatPage.swift
//  shaadi.com
//
//  Created by R94 on 09/06/23.
//

import UIKit

class ChatPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var cv: UICollectionView!
    var a = ["Janu K","sneha M","Vanshita N","Minesh S","Monil S","Harssid V","Jenis N","Avani V","Mansi V","Gopi G","Miral D","Smiti G","trushngi D","Vrushli D","Priya S","Krisha B","Drshti G", "Princy B","Prachi M"]
    var photo = [UIImage(named: "1" ),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv .dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! imageCollectionViewCell
        cell.profileImg.image = photo[indexPath.row]
        cell.nameLabel.text =  "\(a[indexPath.row])"
        cell.profileImg.layer.cornerRadius = cell.profileImg.frame.width/2
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 128
                      , height: 128
        )
        
    }
    
    
    
}
