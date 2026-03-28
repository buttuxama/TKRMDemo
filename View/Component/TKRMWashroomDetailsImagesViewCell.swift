//
//  TKRMWashroomDetailsImagesViewCell.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMWashroomDetailsImagesViewCell: UICollectionViewCell {
    @IBOutlet weak var washroomImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.washroomImage.layer.cornerRadius = 10
        self.washroomImage.clipsToBounds = true
    }
    
    public func configureCellWithImage(imageName: String) {
        washroomImage.image = UIImage(named: imageName)
    }
}
