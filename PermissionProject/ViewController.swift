//
//  ViewController.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private var actionButton: ActionButton!
    private var actionButton2: ActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionButton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 , execute: {
            let actionButtonData = ActionButtonData(buttonTitle: "OK", type: .filled(.smooth)).setActionButtonListener(by: self.actionButtonHandler)
            self.actionButton.setData(by: actionButtonData)
        })
    }
    
    lazy var actionButtonHandler: VoidCompletionBlock = {
        print("ACTION BUTTON PRESSED")
    }
    
    private func addActionButton() {
        actionButton = ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
        
        actionButton2 = ActionButton(frame: .zero, data: ActionButtonData(buttonTitle: "OK", type: .outlined(.smooth)))
        actionButton2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton2)
        
        NSLayoutConstraint.activate([
            
            actionButton2.heightAnchor.constraint(equalToConstant: 50),
            actionButton2.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120),
            
        ])
    }
}

