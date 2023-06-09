//
//  MyPoint.swift
//  TossBenefitPractice
//
//  Created by YUJIN KWON on 2023/06/09.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
