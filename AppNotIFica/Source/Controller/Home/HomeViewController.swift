//
//  HomeViewController.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 15/06/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault{
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        
        return homeView
    }()
    
    override func loadView(){
        self.view = homeView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
    
}
