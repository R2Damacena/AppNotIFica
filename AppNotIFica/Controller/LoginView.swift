//
//  LoginView.swift
//  AppNotIFica
//
//  Created by IFBIOTIC01 on 05/06/23.
//

import Foundation
import UIKit

class LoginView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    var logoLogin: UIImageView = {
        let logoLogin = UIImageView ()
        logoLogin.image = UIImage(named: "logoLogin")
        logoLogin.contentMode = .scaleAspectFit
        logoLogin.translatesAutoresizingMaskIntoConstraints = false
        
        
        return logoLogin
    }()
    
    var logoLabel: UILabel = {
        let logoLabel = UILabel ()
        logoLabel.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        logoLabel.font = UIFont(name: "SFProDisplay-Light", size: 16)
        logoLabel.text = "Registre e gerencie as ocorrências do seu IF"
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return logoLabel
    }()
    
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        

        
        return textField
    }()
    
    var senhaTextField: UITextField = {
        let textField = UITextField ()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "Senha"
        textField.translatesAutoresizingMaskIntoConstraints = false
        

        
        
        return textField
    }()
    
    var buttonLogar: UIButton = {
        let button = UIButton ()
        button.setTitle("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var buttonRegistrar: UIButton = {
        let button = UIButton ()
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    func setupVisualElements(){
        self.addSubview(logoLogin)
        self.addSubview(logoLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
