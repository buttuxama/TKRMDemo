//
//  TKRMTransactionViewCell.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 10.09.23.
//

import UIKit

class TKRMTransactionViewCell: UITableViewCell {

    @IBOutlet weak var transactionCurrency: UILabel!
    @IBOutlet weak var transactionAmount: UILabel!
    @IBOutlet weak var transactionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configureCellWithTransaction(label: String, amount: Double) {
        transactionLabel.text = label
        if (amount < 0.00) {
            transactionCurrency.textColor = UIColor(red: 0.922, green: 0, blue: 0.106, alpha: 1)
            transactionAmount.textColor = UIColor(red: 0.922, green: 0, blue: 0.106, alpha: 1)
            transactionAmount.text = "\(amount)"
        } else {
            transactionCurrency.textColor = UIColor(red: 0.204, green: 0.78, blue: 0.349, alpha: 1)
            transactionAmount.textColor = UIColor(red: 0.204, green: 0.78, blue: 0.349, alpha: 1)
            transactionAmount.text = "+\(amount)"
        }
    }
}
