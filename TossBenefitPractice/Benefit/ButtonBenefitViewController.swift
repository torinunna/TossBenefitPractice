//
//  ButtonBenefitViewController.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/11.
//

import UIKit

class ButtonBenefitViewController: UIViewController {

    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

}
