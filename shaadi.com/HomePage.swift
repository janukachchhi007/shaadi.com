//
//  HomePage.swift
//  shaadi.com
//
//  Created by R94 on 08/06/23.
//

import UIKit

class HomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var cv: UICollectionView!
    var image = [UIImage(named: "security"),UIImage(named: "smartphone (1)")]
    var mainName = ["Get 2 times more Matches","Your Mathes are Unable to reach you"]
    var lastName = ["Verify your profile with ID","Verify yyour mobile number"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        cell.img.image = image[indexPath.row]
        cell.lb1.text = mainName[indexPath.row]
        cell.lb2.text = lastName[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 350, height: 57)
        
    }

}
