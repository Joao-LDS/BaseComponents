//
//  Initializer.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

public struct Initializer {
    public static func initSystemAppearance() {
        DesignSystem.shared.initialize(appearanceStyle: .system)
    }
    
    public static func initCustomAppearance(with color: UIColor) {
        DesignSystem.shared.initialize(appearanceStyle: .custom(color))
    }
}
