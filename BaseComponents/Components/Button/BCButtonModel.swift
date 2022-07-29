//
//  BCButtonModel.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

extension BCButton {
    public struct Model {
        public let title: String
        public let style: BCButton.Style
        
        public init(title: String, style: BCButton.Style) {
            self.title = title
            self.style = style
        }
    }
    
    public enum Style {
        case normal(Size)
        case outlined(Size)
    }
    
    public enum Size {
        case small
        case medium
        case big
        
        var height: CGFloat {
            switch self {
            case .small:
                return 24
            case .medium:
                return 36
            case .big:
                return 46
            }
        }
        
        var font: UIFont {
            switch self {
            case .small:
                return .systemFont(ofSize: 12, weight: .medium)
            case .medium:
                return .systemFont(ofSize: 16, weight: .semibold)
            case .big:
                return .systemFont(ofSize: 20, weight: .bold)
            }
        }
        
        var cornerRadius: CGFloat {
            switch self {
            case .small:
                return BaseDimensions.CornerRadius.smallest
            case .medium:
                return BaseDimensions.CornerRadius.small
            case .big:
                return BaseDimensions.CornerRadius.medium
            }
        }
    }
}
