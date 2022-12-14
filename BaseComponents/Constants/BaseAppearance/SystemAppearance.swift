//
//  SystemAppearance.swift
//  BaseComponents
//
//  Created by João on 01/08/22.
//

import UIKit

struct SystemAppearance: BaseAppearance {
    var mainColor: UIColor = UIColor()
    
    var normalButtonBackground: UIColor {
        return UIColor { trait in
            switch trait.userInterfaceStyle {
            case .dark: return .white
            default: return .black
            }
        }
    }
    
    var normalButtonFontColor: UIColor {
        return UIColor { trait in
            switch trait.userInterfaceStyle {
            case .dark: return .black
            default: return .white
            }
        }
    }
    
    var normalButtonBackgroundDisable: UIColor {
        return UIColor.gray
    }
    
    var normalButtonFontColorDisable: UIColor {
        return.black
    }
}
