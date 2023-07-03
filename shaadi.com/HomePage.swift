//
//  HomePage.swift
//  shaadi.com
//
//  Created by R94 on 08/06/23.
//

import UIKit

class HomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    var image = [UIImage(named: "security"),UIImage(named: "smartphone (1)")]
    var pic = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19")]
    var name = ["Janu Kachchhi","sneha Magtarapara","Vanshita Nariya","Minesh Sutariya","Monil Sojitra","Harssid Vaddoriya","Jenis Navadiya","Avani Virani","Mansi Vaghasiya","Gopi Gadhiya","Miral Dobariya","Smiti Gajera","trushngi Dudhat","Vrushli Dudhat","Priya Surani","Krisha Balar","Drshti Gajera", "Princy Bhojani","Prachi Mandpara"]
    var villageName = ["Ahmedabad,Gujarat","Pune,Mahaarashtra","Austin,USA","Patan,Gujarat","varachchha,surat","Vadodra,Gujarat","Ahmedabad,Gujarat","Pune,Mahaarashtra","Austin,USA","Patan,Gujarat","varachchha,surat","Vadodra,Gujarat","Ahmedabad,Gujarat","Pune,Mahaarashtra","Austin,USA","Patan,Gujarat","varachchha,surat","Vadodra,Gujarat","Ahmedabad,Gujarat"]
    var mainName = ["Get 2 times more Matches","Your Mathes are Unable to reach you"]
    var lastName = ["Verify your profile with ID","Verify yyour mobile number"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == cv
        {
            return image.count
        }
        else
        {
            return pic.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == cv
        {
            let cell = collectionView .dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            cell.img.image = image[indexPath.row]
            cell.lb1.text = mainName[indexPath.row]
            cell.lb2.text = lastName[indexPath.row]
            
            return cell
        }
        else
        {
            let cell2 = collectionView .dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionView2
            cell2.picImg.image = pic[indexPath.row]
            cell2.nameLabel.text = name[indexPath.row]
            cell2.villageName.text = villageName[indexPath.row]
            
            return cell2
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == cv
        {
            return CGSize(width: 350, height: 57)
        }
        else
        {
            return CGSize(width: 210, height: 293)
        }
    }

}
