//
//  TKRMVerificationVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 13.08.23.
//

import UIKit

class TKRMVerificationVC: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var codeVerifyButton: TKRMButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        let mainViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(mainViewTapped))
        mainView.addGestureRecognizer(mainViewTapGesture)
    }

    @objc func mainViewTapped() {
        mainView.endEditing(true)
    }
    
    @IBAction func VerifyButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tabBarMainVC")
        guard let controller = vc else { return }
        controller.modalPresentationStyle = .overFullScreen
        self.present(controller, animated: true)
    }
}
