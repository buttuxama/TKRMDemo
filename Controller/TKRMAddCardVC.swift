//
//  TKRMAddCardVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 03.09.23.
//

import UIKit

class TKRMAddCardVC: UIViewController {

    @IBOutlet weak var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
       
        let mainViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(mainViewTapped))
        mainView.addGestureRecognizer(mainViewTapGesture)
    }

    @objc func mainViewTapped() {
        mainView.endEditing(true)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
