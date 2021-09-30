//
//  GenericBaseView.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 28.09.2021.
//

import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadDataView() {}
    
    func getData() -> T? {
        return data
    }
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
}
