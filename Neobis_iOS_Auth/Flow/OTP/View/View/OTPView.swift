//
//  OTPView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class OTPView: BaseView {
    
    let registerLabel: CustomLabel = {
        let label = CustomLabel()
        label.customTopLabel(label: label, string: "Регистрация")
        return label
    }()
    
    let backButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customBackButtonSetup(button: button)
        return button
    }()
    
    let logoImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customLogoImageViewSetup(iv: iv)
        return iv
    }()
    
    let sentPasswordLabel: CustomLabel = {
        let label = CustomLabel()
        label.customSentPasswordLabel(label: label)
        return label
    }()
    
    let passwordTextField1: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let passwordTextField2: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let passwordTextField3: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let passwordTextField4: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    lazy var passwordTextFieldsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [passwordTextField1,passwordTextField2,passwordTextField3,passwordTextField4])
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    let requestAgain: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Повторный запрос")
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        addSubview(registerLabel)
        addSubview(backButton)
        addSubview(logoImageView)
        addSubview(sentPasswordLabel)
        addSubview(passwordTextFieldsStackView)
        addSubview(requestAgain)
    }
    
    override func setupConstraints() {
        registerLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 60))
            make.centerX.equalToSuperview()
        }
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.equalTo(flexibleWidth(to: 44))
            make.height.equalTo(flexibleHeight(to: 28))
        }
        logoImageView.snp.makeConstraints { make in
            make.top.equalTo(registerLabel.snp.bottom).offset(flexibleHeight(to: 41))
            make.centerX.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 80))
            make.height.equalTo(flexibleHeight(to: 80))
        }
        sentPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(flexibleHeight(to: 40))
            make.centerX.equalToSuperview()
        }
        passwordTextFieldsStackView.snp.makeConstraints { make in
            make.top.equalTo(sentPasswordLabel.snp.bottom).offset(flexibleHeight(to: 30))
            make.centerX.equalToSuperview()
        }
        requestAgain.snp.makeConstraints { make in
            make.top.equalTo(passwordTextFieldsStackView.snp.bottom).offset(flexibleHeight(to: 16))
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
