//
//  ForgotPasswordView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class ForgotPasswordView: BaseView {
    
    let forgotPasswordLabel: CustomLabel = {
        let label = CustomLabel()
        label.customTopLabel(string: "Сброс пароля")
        return label
    }()
    
    let backButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customBackButtonSetup()
        return button
    }()
    
    let logoImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customLogoImageViewSetup()
        return iv
    }()
    
    let logoLabel: CustomLabel = {
        let label = CustomLabel()
        label.customLogoLabel()
        return label
    }()
    
    let mailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(string: "Электронная почта")
        return textField
    }()
    
    let nextButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customProceedDisabledButtonSetup(string: "Далее")
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
        
    override func setupViews() {
        [forgotPasswordLabel,backButton,logoLabel,logoImageView,mailTextField,nextButton].forEach { subView in
            addSubview(subView)
        }
    }
    
    override func setupConstraints() {
        forgotPasswordLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 60))
            make.centerX.equalToSuperview()
        }
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.equalTo(flexibleWidth(to: 44))
            make.height.equalTo(flexibleHeight(to: 28))
        }
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(flexibleHeight(to: 37))
            make.leading.trailing.equalToSuperview().inset(20)
        }
        logoImageView.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(flexibleHeight(to: 22))
            make.width.equalTo(flexibleWidth(to: 80))
            make.height.equalTo(flexibleHeight(to: 80))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
        }
        mailTextField.snp.makeConstraints { make in
            make.top.equalTo(logoLabel.snp.bottom).offset(flexibleHeight(to: 60))
            make.height.equalTo(flexibleHeight(to: 60))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(mailTextField.snp.bottom).offset(flexibleHeight(to: 60))
            make.height.equalTo(flexibleHeight(to: 65))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
