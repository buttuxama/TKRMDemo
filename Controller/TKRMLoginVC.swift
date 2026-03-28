//
//  TKRMLoginVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 13.08.23.
//

import UIKit

class TKRMLoginVC: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var SendCodeButton: TKRMButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mainViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(mainViewTapped))
        mainView.addGestureRecognizer(mainViewTapGesture)
    }

    @objc func mainViewTapped() {
        mainView.endEditing(true)
    }
    
    @IBAction func SendVerificationCodePressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "verificationVC")
        guard let controller = vc else {
            return
        }
        controller.modalPresentationStyle = .overFullScreen
        self.present(controller, animated: true)
    }
    
    @IBAction func termsConditionsTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "termsAndConditionsVC") as? TKRMTermsAndConditionsVC
        guard let controller = vc else {
            return
        }
        controller.modalPresentationStyle = .overFullScreen
        controller.dismissFlag = true
        self.present(controller, animated: true)
    }
}
