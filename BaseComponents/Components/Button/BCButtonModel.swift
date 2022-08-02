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
            case .small: return 24
            case .medium: return 36
            case .big: return 46
            }
        }
        
        var font: UIFont {
            switch self {
            case .small: return .fontSemiBold12
            case .medium: return .fontSemiBold16
            case .big: return .fontSemiBold20
            }
        }
        
        var cornerRadius: CGFloat {
            switch self {
            case .small: return BaseDimensions.CornerRadius.smallest
            case .medium: return BaseDimensions.CornerRadius.small
            case .big: return BaseDimensions.CornerRadius.medium
            }
        }
    }
}
