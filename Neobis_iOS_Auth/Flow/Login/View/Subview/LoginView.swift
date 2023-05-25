//
//  LoginView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class LoginView: BaseView {
    
    let logoImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customLogoImageViewSetup(iv: iv)
        return iv
    }()
    
    let mailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(textField, string: "Электронная почта")
        return textField
    }()
    
    let passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(textField, string: "Пароль")
        textField.addButtontoTextField(textField)
        return textField
    }()
    
    let enterButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customProceedButtonSetup(button: button, string: "Войти")
        return button
    }()
    
    let forgotPasswordButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customBottomButtonSetup(button: button, string: "Забыли пароль?")
        return button
    }()
                
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
        
    override func setupViews() {
        addSubview(logoImageView)
        addSubview(mailTextField)
        addSubview(passwordTextField)
        addSubview(enterButton)
        addSubview(forgotPasswordButton)
    }
    
    override func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 76))
            make.width.equalTo(flexibleWidth(to: 120))
            make.height.equalTo(flexibleHeight(to: 120))
            make.centerX.equalToSuperview()
        }
        mailTextField.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(flexibleHeight(to: 40))
            make.width.equalTo(flexibleWidth(to: 335))
            make.height.equalTo(flexibleHeight(to: 60))
            make.centerX.equalToSuperview()
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(mailTextField.snp.bottom).offset(flexibleHeight(to: 24))
            make.width.equalTo(flexibleWidth(to: 335))
            make.height.equalTo(flexibleHeight(to: 60))
            make.centerX.equalToSuperview()
        }
        enterButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(enterButton.snp.bottom).offset(flexibleHeight(to: 223))
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

