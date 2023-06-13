//
//  RegisterView.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 13/06/23.
//

import Foundation
import UIKit

class RegisterView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
    }
    
    //cria a função com as propriadades da label no login
    var logoLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar.", font: UIFont.systemFont(ofSize: 23, weight: .regular))

    //cria a função com as propriadades da text no login
    var emailTextField = TextFieldDefault (placeholder: "E-mail")
        
    //cria a função com as propriadades da text no login
    var senhaTextField = TextFieldDefault (placeholder: "Senha")
    
    //cria a função com as propriadades da text no login
    var confirmarSenhaTextField = TextFieldDefault (placeholder: "Confirmar Senha")
        
    //cria a função com as propriadades do botão registrar
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    
    //cria a função com as propriadades da butao no logor
    var buttonLogar = ButtonDefault(botao: "LOGAR")
    
    func setupVisualElements(){

        self.addSubview(logoLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmarSenhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)
        
        
        NSLayoutConstraint.activate([
            
            
            logoLabel.widthAnchor.constraint(equalToConstant: 374),
            logoLabel.heightAnchor.constraint(equalToConstant: 60),
            logoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            logoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            logoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: logoLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmarSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmarSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmarSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmarSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmarSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmarSenhaTextField.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        ])
        
        self.layoutIfNeeded()
        
        let emailBottomBorder = CALayer()
        emailBottomBorder.frame = CGRect(x: 0, y: emailTextField.frame.size.height - 1, width: 374, height: 1)
        emailBottomBorder.backgroundColor = UIColor.lightGray.cgColor
        emailTextField.layer.addSublayer(emailBottomBorder)
        emailTextField.layer.masksToBounds = true
        
        // Adicionar a borda cinza na parte inferior do senhaTextField
        let senhaBottomBorder = CALayer()
        senhaBottomBorder.frame = CGRect(x: 0, y: senhaTextField.frame.size.height - 1, width: 374, height: 1)
        senhaBottomBorder.backgroundColor = UIColor.lightGray.cgColor
        senhaTextField.layer.addSublayer(senhaBottomBorder)
        senhaTextField.layer.masksToBounds = true
        
        let confirmarsenhaBottomBorder = CALayer()
        confirmarsenhaBottomBorder.frame = CGRect(x: 0, y: confirmarSenhaTextField.frame.size.height - 1, width: 374, height: 1)
        confirmarsenhaBottomBorder.backgroundColor = UIColor.lightGray.cgColor
        confirmarSenhaTextField.layer.addSublayer(confirmarsenhaBottomBorder)
        confirmarSenhaTextField.layer.masksToBounds = true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}