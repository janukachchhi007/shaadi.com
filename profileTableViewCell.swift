//
//  profileTableViewCell.swift
//  shaadi.com
//
//  Created by R94 on 01/06/23.
//

import UIKit

class profileTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myselfButton: UIButton!
    @IBOutlet weak var mySonButton: UIButton!
    @IBOutlet weak var mDaughterButton: UIButton!
    @IBOutlet weak var mBrotherButton: UIButton!
    @IBOutlet weak var mSisterButton: UIButton!
    @IBOutlet weak var mFriendButton: UIButton!
    @IBOutlet weak var mRealativeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myselfButton.layer.borderWidth = 2
        myselfButton.layer.borderColor = UIColor.gray.cgColor
        myselfButton.layer.cornerRadius = 18
        myselfButton.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
