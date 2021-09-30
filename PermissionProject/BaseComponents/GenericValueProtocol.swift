//
//  GenericValueProtocol.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
