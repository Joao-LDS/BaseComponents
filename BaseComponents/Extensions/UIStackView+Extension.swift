//
//  UIStackView+Extension.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach ({ addArrangedSubview($0) })
    }
}
