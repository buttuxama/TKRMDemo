//
//  TKRMRatingVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 18.09.23.
//

import UIKit

class TKRMRatingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
