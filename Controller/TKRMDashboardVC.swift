//
//  TKRMDashboardVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 28.08.23.
//

import UIKit
import MapKit

class TKRMDashboardVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var topView: UIView!
    lazy var washroomListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "washroomsListVC")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        let gradientMaskLayer = CAGradientLayer()
        gradientMaskLayer.frame = topView.bounds
        gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientMaskLayer.locations = [0, 0, 0.8, 1]
        topView.layer.mask = gradientMaskLayer
    }
    
    @IBAction func washroomsListButtonPressed(_ sender: Any) {
        presentwashroomList();
    }
    
    @objc func presentwashroomList() {
        if let sheet = washroomListVC.sheetPresentationController {
            sheet.detents = [.large()]
            tabBarController?.tabBar.isHidden = false
        }
        self.tabBarController?.selectedViewController?.present(washroomListVC, animated: true)
    }
    
}
