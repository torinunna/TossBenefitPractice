//
//  MyPoinViewModel.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/12.
//

import Foundation

final class MyPoinViewModel {
    @Published var point: MyPoint = .default
    
    init(point: MyPoint) {
        self.point = point
    }
}
