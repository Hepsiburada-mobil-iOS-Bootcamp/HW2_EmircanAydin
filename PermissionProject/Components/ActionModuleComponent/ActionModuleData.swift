//
//  ActionModuleData.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 30.09.2021.
//

import Foundation

class ActionModuleData {
    private(set) var notNowButton: ActionButtonData
    private(set) var okButton: ActionButtonData
    
    init(notNowButton: ActionButtonData, okButton: ActionButtonData) {
        self.notNowButton = notNowButton
        self.okButton = okButton
    }
}
