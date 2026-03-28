//
//  TKRMTermsAndConditionsVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 27.08.23.
//

import UIKit

class TKRMTermsAndConditionsVC: UIViewController {

    public var dismissFlag: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        if (dismissFlag) {
            self.dismiss(animated: true)
        } else {
            dismissFlag = false
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
