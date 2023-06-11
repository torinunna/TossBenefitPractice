//
//  ButtonBenefitViewController.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/11.
//

import UIKit

class ButtonBenefitViewController: UIViewController {
    @IBOutlet weak var ctaButton: UIButton!
    @IBOutlet weak var vStackView: UIStackView!
    
    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        setUpUI()
        addguiedes()
        ctaButton.setTitle(benefit.ctaTitle, for: .normal)
    }
    
    private func setUpUI() {
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
    }

    private func addguiedes() {
        let guideView: [BenefitGuideView] = benefitDetails.guides.map { guide in
            let guideView = BenefitGuideView(frame: .zero)
            guideView.icon.image = UIImage(systemName: guide.iconName)
            guideView.title.text = guide.guide
            return guideView
        }
        
        guideView.forEach { view in
            self.vStackView.addArrangedSubview(view)
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }
}
