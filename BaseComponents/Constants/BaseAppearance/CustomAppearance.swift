//
//  CustomAppearance.swift
//  BaseComponents
//
//  Created by João on 01/08/22.
//

import UIKit

struct CustomAppearance: BaseAppearance {
    var mainColor: UIColor
    
    var normalButtonBackground: UIColor {
        return mainColor
    }
    
    var normalButtonFontColor: UIColor {
        return .white
    }
    
    var normalButtonBackgroundDisable: UIColor {
        return UIColor.gray
    }
    
    var normalButtonFontColorDisable: UIColor {
        return.black
    }
}
