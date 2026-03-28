//
//  TKRMEditInformationVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 06.09.23.
//

import UIKit

class TKRMEditInformationVC: UIViewController {

    @IBOutlet var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        let mainViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(mainViewTapped))
        mainView.addGestureRecognizer(mainViewTapGesture)
    }
    
    @objc func mainViewTapped() {
        mainView.endEditing(true)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
