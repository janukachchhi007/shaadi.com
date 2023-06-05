//
//  googlePageTableView.swift
//  shaadi.com
//
//  Created by R94 on 05/06/23.
//

import UIKit

class googlePageTableView: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var gmailNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
