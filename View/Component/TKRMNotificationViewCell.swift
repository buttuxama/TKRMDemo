//
//  TKRMNotificationViewCell.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMNotificationViewCell: UITableViewCell {

    @IBOutlet weak var notificationText: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configureCellWithNotification(text: String, time: String, date: String) {
        notificationText.text = text
        dateLabel.text = date
        timeLabel.text = time
    }
}
