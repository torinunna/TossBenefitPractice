//
//  MyPointCell.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/09.
//

import UIKit

class MyPointCell: UICollectionViewCell {
    static let identifier = "MyPointCell"
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    func configure(item: MyPoint) {
        iconImage.image = UIImage(named: "ic_point")
        descriptionLabel.text = "내 포인트"
        pointLabel.text = "\(item.point)"
    }
}
