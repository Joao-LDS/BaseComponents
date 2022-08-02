//
//  CustomAppearance.swift
//  BaseComponents
//
//  Created by João on 01/08/22.
//

import UIKit

struct CustomAppearance: BaseAppearanceColor {
    var mainColor: UIColor
    
    var normalButtonBackground: UIColor {
        return mainColor
    }
    
    var normalButtonFont: UIColor {
        return .white
    }
    
    init(mainColor: UIColor) {
        self.mainColor = mainColor
    }
}
