//
//  ActionButtonData.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

typealias VoidCompletionBlock = () -> Void

class ActionButtonData {
    
    private(set) var buttonTitle: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(buttonTitle: String, type: ActionButtonType) {
        self.buttonTitle = buttonTitle
        self.buttonType = type
    }
    
    func setActionButtonListener(by value: VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
}
