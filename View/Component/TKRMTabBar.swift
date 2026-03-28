//
//  TKRMTabBar.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 13.08.23.
//

import UIKit

class TKRMTabBar: UITabBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.isTranslucent = true
        self.layer.cornerRadius = 10
    }

}
