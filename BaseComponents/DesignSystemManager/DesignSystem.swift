//
//  DesignSystem.swift
//  BaseComponents
//
//  Created by João on 02/08/22.
//

import UIKit

struct DesignSystem {
    static let shared = DesignSystem()
    private(set) static var appearance: BaseAppearanceColor!
    
    private init() { }
    
    func initialize(appearanceStyle: StyleAppearance = .system) {
        loadFonts()
        DesignSystem.appearance = appearanceStyle.baseAppearance
    }
    
    private func loadFonts() {
        do {
            try UIFont.register(fontName: "NotoSans-Bold")
            try UIFont.register(fontName: "NotoSans-SemiBold")
            try UIFont.register(fontName: "NotoSans-Medium")
            try UIFont.register(fontName: "NotoSans-Light")
        } catch let error as FontError {
            print("REGISTER FONT ERROR: \(error.rawValue)")
        } catch { }
    }
}
