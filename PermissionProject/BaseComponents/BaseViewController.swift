//
//  BaseViewController.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 1.10.2021.
//

import UIKit

class BaseViewController<V>: UIViewController {
    
    var viewModel: V!
    
    convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        prepareViewControllerSetup()
    }
    
    func prepareViewControllerSetup() {
        // override please
        view.backgroundColor = .white
    }
    
}
