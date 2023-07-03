//
//  ChatTableView.swift
//  shaadi.com
//
//  Created by R94 on 20/06/23.
//

import UIKit

class ChatTableView: UITableViewCell {

    @IBOutlet weak var tikMarkMsgImg: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var idNameLabel: UILabel!
    @IBOutlet weak var dpimg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
