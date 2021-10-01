//
//  GenericValueProtocol.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 2.10.2021.
//

import Foundation

protocol GenericValueProtocol {
    
    associatedtype Value
    var value: Value { get }
    
}
