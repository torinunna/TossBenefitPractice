//
//  MyPointViewController.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/11.
//

import UIKit
import Combine

class MyPointViewController: UIViewController {

    @IBOutlet weak var pointLabel: UILabel!
    
    var viewModel: MyPoinViewModel!
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func setupUI() {
        navigationItem.largeTitleDisplayMode = .never
    }

    private func bind() {
        viewModel.$point
            .receive(on: RunLoop.main)
            .sink { point in
                self.pointLabel.text = "\(point.point) 원"
            }.store(in: &subscriptions)
    }
}
