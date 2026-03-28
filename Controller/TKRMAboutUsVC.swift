//
//  TKRMAboutUsVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 27.08.23.
//

import UIKit

class TKRMAboutUsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
