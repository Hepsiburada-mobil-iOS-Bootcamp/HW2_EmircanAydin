//
//  ActionButtonData.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

class ActionButtonData {
    
    private(set) var buttonTitle: String
    private(set) var buttonType: ActionButtonType
    
    init(buttonTitle: String, type: ActionButtonType) {
        self.buttonTitle = buttonTitle
        self.buttonType = type
    }
}
