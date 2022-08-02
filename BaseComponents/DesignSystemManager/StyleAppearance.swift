//
//  StyleAppearance.swift
//  BaseComponents
//
//  Created by João on 02/08/22.
//

import UIKit

public enum StyleAppearance {
    case system
    case custom(UIColor)
    
    var baseAppearance: BaseAppearanceColor {
        switch self {
        case .system: return SystemAppearance()
        case .custom(let color): return CustomAppearance(mainColor: color)
        }
    }
}
