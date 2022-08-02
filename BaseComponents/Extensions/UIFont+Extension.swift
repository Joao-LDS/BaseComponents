//
//  UIFont+Extension.swift
//  BaseComponents
//
//  Created by João on 01/08/22.
//

import UIKit

enum FontError: String, Error {
    case pathNotFound = "PATH NOT FOUND"
    case invalidFile = "INVALID FILE"
    case initFont = "INIT FONT"
    case register = "REGISTER FAILED"
}

private class GetBundle { }

extension UIFont {
    static func register(fontName: String) throws {
        let bundle = Bundle(for: GetBundle.self)
        
        guard let fontPath = bundle.path(forResource: fontName, ofType: "ttf") else {
            throw FontError.pathNotFound
        }
        
        guard let fontData = NSData(contentsOfFile: fontPath),
              let dataProvider = CGDataProvider.init(data: fontData)
        else {
            throw FontError.invalidFile
        }
        
        guard let fontRef = CGFont.init(dataProvider) else {
            throw FontError.initFont
        }
        
        var errorRef: Unmanaged<CFError>? = nil
        
        guard CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) else {
            throw FontError.register
        }
        
        print("REGISTER FONT \(fontName): SUCCESSFULLY")
    }
}
