//
//  RegisterCoordinator.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 13/06/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
        
    }
    
    //função que chama a registerView
    func  gotoLogin() {
        self.navigationController.popViewController(animated: true)

    }
}
