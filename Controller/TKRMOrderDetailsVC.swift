//
//  TKRMOrderDetailsVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMOrderDetailsVC: UIViewController {

    @IBOutlet weak var qrImage: UIImageView!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func hideImage() {
        displayLabel.isHidden = true
        qrImage.isHidden = true
    }
    
    @IBAction func invoiceButtonTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "invoiceVC") as! TKRMInvoiceVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
