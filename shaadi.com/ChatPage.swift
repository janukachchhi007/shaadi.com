//
//  ChatPage.swift
//  shaadi.com
//
//  Created by R94 on 09/06/23.
//

import UIKit

class ChatPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    @IBOutlet weak var tb: UITableView!
    @IBOutlet weak var cv: UICollectionView!
    
    var a = ["Janu K","sneha M","Vanshita N","Minesh S","Monil S","Harssid V","Jenis N","Avani V","Mansi V","Gopi G","Miral D","Smiti G","trushngi D","Vrushli D","Priya S","Krisha B","Drshti G", "Princy B","Prachi M"]
    var photo = [UIImage(named: "1" ),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19")]
    var idName = ["Janu K","sneha M","Vanshita N","Minesh S","Monil S","Harssid V","Jenis N","Avani V","Mansi V","Gopi G","Miral D","Smiti G","trushngi D","Vrushli D","Priya S","Krisha B","Drshti G", "Princy B","Prachi M"]
    var tikimg = [UIImage(systemName: "1.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "1.circle.fill"),UIImage(systemName: "6.circle.fill"),UIImage(systemName: "5.circle.fill"),]
    var name = ["Janu Kachchhi","sneha Magtarapara","Vanshita Nariya","Minesh Sutariya","Monil Sojitra","Harssid Vaddoriya","Jenis Navadiya","Avani Virani","Mansi Vaghasiya","Gopi Gadhiya","Miral Dobariya","Smiti Gajera","trushngi Dudhat","Vrushli Dudhat","Priya Surani","Krisha Balar","Drshti Gajera", "Princy Bhojani","Prachi Mandpara"]
    var msg = ["Hi","Has messaged you","your messged","you misses a vioce call","Has messaged you","Has messaged you","Has messaged you","Hi","Hi","your messged","you misses a vioce call","Hi","Bol","your messged","Plz message","you misses a vioce call","Hi","you misses a vioce call","your messged"]
    var time = ["09:35AM","12:41AM","Yeaterday","18 Jun","17 Jun","16 Jun","12 Jun","11 Jun","10 Jun","6 Jun","1 Jun","31 May","26 May","28 April","20 April","6 April","23 March","10 March","3 March"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatTableView
        cell.dpimg.layer.cornerRadius = cell.dpimg.frame.width/2
        cell.dpimg.image = photo[indexPath.row]
        cell.idNameLabel.text = name[indexPath.row]
        cell.msgLabel.text = msg[indexPath.row]
        cell.timeLabel.text = time[indexPath.row]
        cell.tikMarkMsgImg.image = tikimg[indexPath.row]
        return cell
    }
    func naviget(name: String,photo:UIImage)
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "chatnNaviagtePage") as! chatnNaviagtePage
        navigation.a  = name
        navigation.b = photo
        navigationController?.pushViewController(navigation, animated: true)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        naviget(name: name[indexPath.row], photo: photo[indexPath.row]!)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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
