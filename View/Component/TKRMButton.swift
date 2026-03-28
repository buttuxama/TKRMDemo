//
//  TKRMButton.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 13.08.23.
//

import UIKit

@IBDesignable
class TKRMButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.configure()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        self.configure()
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.configure()
        }
    }
    
    @IBInspectable override var backgroundColor: UIColor! {
        didSet {
            self.configure()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        self.configure()
    }
    
    private func configure() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.cornerRadius
        print("Configured.")
    }
    
}
