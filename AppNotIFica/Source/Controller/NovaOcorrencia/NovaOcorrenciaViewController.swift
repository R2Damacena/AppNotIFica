//
//  NovaOcorrenciaController.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 22/06/23.
//

import Foundation
import UIKit
class NovaOcorrenciaViewController: ViewControllerDefault{
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        novaOcorrenciaView.onCameraTap = {
            EscolherImagem().selecionadorImagem(self) { imagem in novaOcorrenciaView.setImage(image: imagem)
            }
        }
        
        
        return novaOcorrenciaView
    }()
    
    
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        
    }
    
}
