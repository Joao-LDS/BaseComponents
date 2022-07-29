//
//  BaseColor.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import Foundation

enum BaseColor {
    enum Button {
        case background
        case font
        
        var color: UIColor {
            switch self {
            case .background:
                switch Config.shared.apperence {
                case .dark: return .white
                case .light: return .black
                case .custom(let color): return color
                }
            case .font:
                switch Config.shared.apperence {
                case .dark: return .black
                case .light, .custom: return .white
                }
            }
        }
    }
}
