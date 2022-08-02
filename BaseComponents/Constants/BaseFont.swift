//
//  BaseFont.swift
//  BaseComponents
//
//  Created by João on 02/08/22.
//

import UIKit

private enum Constants {
    static let fontLight = "NotoSans-Light"
    static let fontMedium = "NotoSans-Medium"
    static let fontBold = "NotoSans-Bold"
    static let fontSemiBold = "NotoSans-SemiBold"
}

extension UIFont {
    class var fontSemiBold12: UIFont {
        return fontSemiBold(12)
    }
    
    class var fontSemiBold16: UIFont {
        return fontSemiBold(16)
    }
    
    class var fontSemiBold20: UIFont {
        return fontSemiBold(20)
    }
    
    private class func fontSemiBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: Constants.fontSemiBold, size: size) ?? .systemFont(ofSize: size, weight: .semibold)
    }
}
