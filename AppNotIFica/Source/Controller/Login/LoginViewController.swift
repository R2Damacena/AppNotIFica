//
//  LoginViewController.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 05/06/23.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    
    
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (()->Void)?


    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
    }
}
