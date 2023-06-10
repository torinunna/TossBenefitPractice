//
//  TodayBenefitCell.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/09.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    static let identifier = "TodayBenefitCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ctaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
    }
}
