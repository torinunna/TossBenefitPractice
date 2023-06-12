//
//  ButtonBenefitViewController.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/11.
//

import UIKit
import Combine

class ButtonBenefitViewController: UIViewController {
    @IBOutlet weak var ctaButton: UIButton!
    @IBOutlet weak var vStackView: UIStackView!
    
    var viewModel: ButtonBenefitViewModel!
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        bind()
        viewModel.fetchDetails()
    }
    
    private func setUpUI() {
        navigationItem.largeTitleDisplayMode = .never
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
    }
    
    private func bind() {
        viewModel.$benefit
            .receive(on: RunLoop.main)
            .sink { benefit in
                self.ctaButton.setTitle(benefit.ctaTitle, for: .normal)
            }.store(in: &subscriptions)
        
        viewModel.$benefitDetails
            .compactMap { $0 }
            .receive(on: RunLoop.main)
            .sink { details in
                self.addguides(details: details)
            }.store(in: &subscriptions)
    }

    private func addguides(details: BenefitDetails) {
        
        let guideView = vStackView.arrangedSubviews.filter { $0 is BenefitGuideView }
        guard guideView.isEmpty else { return }
    
        let guideViews: [BenefitGuideView] = details.guides.map { guide in
            let guideView = BenefitGuideView(frame: .zero)
            guideView.icon.image = UIImage(systemName: guide.iconName)
            guideView.title.text = guide.guide
            return guideView
        }
        
        guideViews.forEach { view in
            self.vStackView.addArrangedSubview(view)
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }
}
