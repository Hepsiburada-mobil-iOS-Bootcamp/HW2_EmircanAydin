//
//  ActionModule.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 30.09.2021.
//

import UIKit

class ActionModule: GenericBaseView<ActionModuleData> {
    
    private lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white
        containerView.clipsToBounds = true
        return containerView
    }()
    
    lazy var mainStackView: UIStackView = {
        let mainStackView = UIStackView(arrangedSubviews: [okButton, notNowButton])
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.alignment = .center
        mainStackView.distribution = .fill
        mainStackView.axis = .horizontal
        mainStackView.spacing = 20
        return mainStackView
    }()
    
    private lazy var notNowButton: ActionButton = {
        let notNowButton = ActionButton()
        notNowButton.translatesAutoresizingMaskIntoConstraints = false
        notNowButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        notNowButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return notNowButton
    }()
    
    private lazy var okButton: ActionButton = {
        let notNowButton = ActionButton()
        notNowButton.translatesAutoresizingMaskIntoConstraints = false
        notNowButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        notNowButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return notNowButton
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    private func addUserComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        notNowButton.setData(by: data.notNowButton)
        okButton.setData(by: data.okButton)
    }
    
}
