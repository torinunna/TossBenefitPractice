//
//  ButtonBenefitViewController.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/11.
//

import UIKit

class ButtonBenefitViewController: UIViewController {
    @IBOutlet weak var ctaButton: UIButton!
    
    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
        
        ctaButton.setTitle(benefit.ctaTitle, for: .normal)
    }

}
