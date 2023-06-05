//
//  LoginCoordinator.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 05/06/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
}
