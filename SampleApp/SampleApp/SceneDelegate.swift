//
//  SceneDelegate.swift
//  SampleApp
//
//  Created by João on 29/07/22.
//

import UIKit
import BaseComponents

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        initializeUI()
        
        window = UIWindow(windowScene: scene)
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
    }
}

extension SceneDelegate {
    private func initializeUI() {
        let color = UIColor(red: 28/255, green: 56/255, blue: 121/255, alpha: 1)
        BaseComponents.Initializer.initCustomAppearance(with: color)
//        BaseComponents.Initializer.initSystemAppearance()
    }
}
