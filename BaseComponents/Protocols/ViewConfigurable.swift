//
//  ViewConfigurable.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import Foundation

protocol ViewConfigurable {
    func addSubviews()
    func addConstraints()
    func setupUI()
}

extension ViewConfigurable {
    func setupUI() {
        addSubviews()
        addConstraints()
    }
}
