//
//  ViewController.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private var actionModule: ActionModule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionModule()
        setupActionModuleData()
    }
    
    private func addActionModule() {
        actionModule = ActionModule()
        actionModule.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(actionModule)
        
        NSLayoutConstraint.activate([
            
            actionModule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
        ])
    }
    
    private func setupActionModuleData() {
        let notNow = ActionButtonData(buttonTitle: "OK",
                                      type: .filled(.smooth)).setActionButtonListener {
                                        print("Not now fired!")
                                        
                                      }
        
        let ok = ActionButtonData(buttonTitle: "Not Now",
                                  type: .outlined(.smooth)).setActionButtonListener {
                                    print("Ok fired!")
                                  }
        
        actionModule.setData(by: ActionModuleData(notNowButton: notNow, okButton: ok))
    }
}

