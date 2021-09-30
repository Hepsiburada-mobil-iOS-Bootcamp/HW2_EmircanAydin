//
//  ActionButton.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

class ActionButton: GenericBaseView<ActionButtonData> {
    
    private lazy var shadowContainer: UIView = {
        let shadowContainer = UIView()
        shadowContainer.translatesAutoresizingMaskIntoConstraints = false
        shadowContainer.layer.shadowColor = UIColor.black.cgColor
        shadowContainer.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowContainer.layer.shadowRadius = 4
        shadowContainer.layer.opacity = 0.8
        shadowContainer.layer.cornerRadius = 6
        return shadowContainer
    }()
    
    private lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.layer.cornerRadius = 6
        containerView.clipsToBounds = true
        return containerView
    }()
    
    private lazy var buttonTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = FontManager.bold(14).value
        label.text = " "
        label.contentMode = .center
        label.textAlignment = .center
        return label
    }()
    
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTapGesture()
    }
    
    private func addContainerView() {
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerView)
        containerView.addSubview(buttonTitle)
        
        NSLayoutConstraint.activate([
            
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            
            buttonTitle.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            buttonTitle.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = getData() else { return }
        
        buttonTitle.text = data.buttonTitle
        
        switch data.buttonType {
        case .filled(let theme):
            containerView.backgroundColor = theme.value
            buttonTitle.textColor = .white
        case .outlined(let theme):
            containerView.layer.borderWidth = 1
            containerView.backgroundColor = .white
            containerView.layer.borderColor = theme.value.cgColor
            buttonTitle.textColor = theme.value
        }
    }
    
    func pressedButtonAction() {
        guard let data = getData() else { return }
        data.actionButtonListener?()
    }
}

// MARK: - UIGestureRecognizerDelegate
extension ActionButton: UIGestureRecognizerDelegate {
    
    func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer) {
        
        isUserInteractionEnabled = false
        startTappedAnimation(with: { finish in
            self.isUserInteractionEnabled = true
            print("Clicked")
            self.pressedButtonAction()
        })
    }
}

fileprivate extension Selector {
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}
