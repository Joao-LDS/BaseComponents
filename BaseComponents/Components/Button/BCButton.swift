//
//  BCButton.swift
//  BaseComponents
//
//  Created by João on 29/07/22.
//

import UIKit

public class BCButton: UIButton {
    private lazy var heightConstraint = heightAnchor.constraint(equalToConstant: Size.medium.height)
    
    public var model: BCButton.Model? {
        didSet {
            build()
        }
    }
    
    public override var isEnabled: Bool {
        didSet {
            // TODO: - call function to change state
        }
    }
    
    private lazy var containerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 0
        view.distribution = .fill
        view.axis = .horizontal
        return view
    }()
    
    private lazy var label: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .center
        return view
    }()
    
    private lazy var iconView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func build() {
        guard let model = model else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        backgroundColor = BaseColor.Button.background.color
        
        switch model.style {
        case .normal(let size):
            heightConstraint.constant = size.height
            label.font = size.font
            layer.cornerRadius = size.cornerRadius
        case .outlined(let size):
            heightConstraint.constant = size.height
            label.font = size.font
        }
        
        label.text = model.title
        label.textColor = BaseColor.Button.font.color
    }
}

extension BCButton: ViewConfigurable {
    public func addSubviews() {
        containerStack.addArrangedSubviews([label, iconView])
        addSubviews([containerStack])
    }
    
    public func addConstraints() {
        NSLayoutConstraint.activate([
            heightConstraint,
            containerStack.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: BaseDimensions.Margins.medium),
            containerStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -BaseDimensions.Margins.medium)
        ])
    }
}
