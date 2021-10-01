//
//  CameraPermissionProtocol.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 2.10.2021.
//

import Foundation

protocol CameraPermissionProtocol: PermissionManagerProtocol {
    
    func checkPermission() -> Bool

}
