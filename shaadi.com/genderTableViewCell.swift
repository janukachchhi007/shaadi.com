//
//  genderTableViewCell.swift
//  shaadi.com
//
//  Created by R94 on 06/06/23.
//

import UIKit

class genderTableViewCell: UITableViewCell {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var redioButton: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
