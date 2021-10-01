//
//  ActionComponentData.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 2.10.2021.
//

import Foundation

class ActionComponentData {
    private(set) var negativeButton: ActionButtonViewData
    private(set) var positifButton: ActionButtonViewData
    
    init(positifButton: ActionButtonViewData, negativeButton: ActionButtonViewData) {
        self.positifButton = positifButton
        self.negativeButton = negativeButton
    }
}
