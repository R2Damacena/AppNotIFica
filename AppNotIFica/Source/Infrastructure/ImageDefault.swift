//
//  ImageDefault.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 13/06/23.
//

import Foundation
import UIKit

class ImageDefault: UIImageView{
    
    init(image: String){
        super.init(frame: .zero)
        initImageDefault(image: image)
        atualizarImagem()

        
    }
    
    private func initImageDefault(image: String){
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func atualizarImagem() {
            if traitCollection.userInterfaceStyle == .dark {
                self.image = UIImage(named: "logoLoginDark")
            } else {
                self.image = UIImage(named: "logoLogin")
            }
        }
        
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
                atualizarImagem()
            }
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
