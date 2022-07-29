//
//  Initialize.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

public class Config {
    public static let shared = Config()
    public var apperence: Appearance = .dark
    
    public enum Appearance {
        case dark
        case light
        case custom(UIColor)
    }
}

