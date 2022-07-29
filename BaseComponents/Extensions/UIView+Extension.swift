//
//  UIView+Extension.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach ({ addSubview($0) })
    }
    
    func anchor(inset: UIEdgeInsets) {
        guard let superview = superview else {
            return
        }
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: inset.top),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: inset.bottom),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: inset.left),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: inset.right)
        ])
    }
    
    func fillInSuperview() {
        anchor(inset: .zero)
    }
}
