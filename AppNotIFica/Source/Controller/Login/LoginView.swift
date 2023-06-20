//
//  LoginView.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 05/06/23.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    //MARK: -  Clouseres
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (()->Void)?

    
    
    
    
    
    
    
    var logoLogin = ImageDefault(image: "logoLogin")
    
    var logoLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
        
    //cria a função com as propriadades da text no login
    var emailTextField = TextFieldDefault (placeholder: "E-mail", keyBordType: .emailAddress, returnKeyType: .next)
        
    //cria a função com as propriadades da text no login
    var senhaTextField: TextFieldDefault = {
        
        let text = TextFieldDefault (placeholder: "Senha", keyBordType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true
        return text
        
    }()
    
    //cria a função com as propriadades da butao no logor
    var buttonLogar = ButtonDefault(botao: "LOGAR")
        
    //cria a função com as propriadades do botão registrar
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    
    override func setupVisualElements(){
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        self.addSubview(logoLogin)
        self.addSubview(logoLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)

        
        
        NSLayoutConstraint.activate([
            
            logoLogin.widthAnchor.constraint(equalToConstant: 274.99),
            logoLogin.heightAnchor.constraint(equalToConstant: 82.64),
            logoLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            logoLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            logoLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 241),
            
            logoLabel.widthAnchor.constraint(equalToConstant: 100),
            logoLabel.topAnchor.constraint(equalTo: logoLogin.bottomAnchor, constant: 5),
            logoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
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
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
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
        
        
        
    }
    
    @objc
    private func registerTap(){
        onRegisterTap?()
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
    
}

extension LoginView: UITextFieldDelegate {
  
    //esconde o teclado quando o botão próximo é acionado e foca no proximo campo
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        //quando estiverna campo de email, ao clicar no botao seguinte vai para o campo senha
        if textField == emailTextField {
            //
            self.senhaTextField.becomeFirstResponder()
        } else {
            //se náo for o campo senha esconde o teclado
            textField.resignFirstResponder()
        }
        
        return true
    }
}
