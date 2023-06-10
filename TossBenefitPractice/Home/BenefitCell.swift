//
//  BenefitCell.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/09.
//

import UIKit

class BenefitCell: UICollectionViewCell {
    static let identifier = "BenefitCell"
    
    @IBOutlet weak var benefitImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(item: Benefit) {
        benefitImage.image = UIImage(named: item.imageName)
        descriptionLabel.text = item.description
        titleLabel.text = item.title
    }
}
