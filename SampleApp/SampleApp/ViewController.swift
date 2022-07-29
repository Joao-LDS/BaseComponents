//
//  ViewController.swift
//  SampleApp
//
//  Created by João on 29/07/22.
//

import UIKit
import BaseComponents

class ViewController: UIViewController {
    
    private lazy var containerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 16
        view.distribution = .fill
        view.axis = .vertical
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = BCButton()
        button1.model = BCButton.Model(title: "Small", style: .normal(.small))
        
        let button2 = BCButton()
        button2.model = BCButton.Model(title: "Medium", style: .normal(.medium))
        
        let button3 = BCButton()
        button3.model = BCButton.Model(title: "Big", style: .normal(.big))
        
        view.backgroundColor = .white
        containerStack.addArrangedSubview(button1)
        containerStack.addArrangedSubview(button2)
        containerStack.addArrangedSubview(button3)
        view.addSubview(containerStack)
        containerStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

