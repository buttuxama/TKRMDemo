//
//  TKRMOrderViewCell.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMOrderViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var orderNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCellWithOrder(number: String, time: String, date: String) {
        self.orderNumber.text = number
        self.dateLabel.text = date
        self.timeLabel.text = time
    }

}
