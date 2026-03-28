//
//  TKRMShadowAndCorneredView.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 27.08.23.
//

import UIKit
@IBDesignable
class TKRMShadowAndCorneredView: UIView {

    @IBInspectable var shadow: Bool {
        get {
            return layer.shadowOpacity > 0.0
        }
        set {
            if newValue == true {
                self.addShadow()
            }
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
                // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            if shadow == false {
                self.layer.masksToBounds = true
            }
        }
    }
    
    @IBInspectable var cornerRadiusSides: Int {
        get {
            return 1
        }
        set {
            switch newValue {
            case 1:
                self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            case 2:
                self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
            case 3:
                self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMinYCorner]
            default:
                self.layer.maskedCorners = []
            }
        }
    }
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor, shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0), shadowOpacity: Float = 0.2, shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.shadowPath = UIBezierPath(rect: CGRect(x: 0,
                                                          y: bounds.maxY - layer.shadowRadius,
                                                          width: bounds.width,
                                                          height: layer.shadowRadius)).cgPath
        print("Applied Shadow")
    }
}
