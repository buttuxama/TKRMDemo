//
//  TKRMSettingsVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 26.08.23.
//

import UIKit

class TKRMSettingsVC: UIViewController {

    @IBOutlet weak var walletBalanceView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(walletBalanceTapped))
        walletBalanceView.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func editInformationButtonPressede(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "editInformationVC") as! TKRMEditInformationVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func OrdersButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "orderVC") as! TKRMOrderVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func NotificationsButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "notificationVC") as! TKRMNotificationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func AboutUsButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "aboutUsVC") as! TKRMAboutUsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func TermsAndConditionButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "termsAndConditionsVC") as! TKRMTermsAndConditionsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ShareAppButtonPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func RateAppButtonPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func SupportButtonPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func SignOutButtonPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func DeleteAccountButtonPressed(_ sender: Any) {
        
    }
    
    @objc func walletBalanceTapped() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "walletVC") as! TKRMWalletVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
