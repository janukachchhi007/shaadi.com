//
//  ChatPage.swift
//  shaadi.com
//
//  Created by R94 on 09/06/23.
//

import UIKit

class ChatPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var cv: UICollectionView!
    var a = ["Janu K","sneha M","Vanshita N","Dipika C","Monil S","Harssid V","Jenis N","Avani V","Mansi V","Shruti N","Miral D","Smiti G","trushngi D","Vrushli D","Priya S","Krisha B","Drshti G", "Hasti S","Prachi M"]
    var photo = [UIImage(systemName: " 1"),UIImage(systemName: "2 "),UIImage(systemName: "3"),UIImage(systemName: "4"),UIImage(systemName: "5"),UIImage(systemName: "6"),UIImage(systemName: "7"),UIImage(systemName: "8"),UIImage(systemName: "9"),UIImage(systemName: "10"),UIImage(systemName: "11"),UIImage(systemName: "12"),UIImage(systemName: "13"),UIImage(systemName: "14"),UIImage(systemName: "15"),UIImage(systemName: "16"),UIImage(systemName: "17"),UIImage(systemName: "18"),UIImage(systemName: "19")]
     
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

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 130
        )
        
    }



}
