//
//  TKRMWashroomDetailsVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 18.09.23.
//

import UIKit

class TKRMWashroomDetailsVC: UIViewController {

    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var topView: UIView!
    var images: [String] = ["Rectangle 7", "Rectangle 8", "Rectangle 9", "Rectangle 10", "Rectangle 11"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        imageCollectionView.dataSource = self
        imageCollectionView.delegate = self
        let gradientMaskLayer = CAGradientLayer()
        gradientMaskLayer.frame = topView.bounds
        gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientMaskLayer.locations = [0, 0, 0.5, 1]
        topView.layer.mask = gradientMaskLayer

    }
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension TKRMWashroomDetailsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: "washroomDetailsImageCollectionViewCell", for: indexPath) as! TKRMWashroomDetailsImagesViewCell
        cell.configureCellWithImage(imageName: images[indexPath.row])
        return cell
    }
    
    
}
