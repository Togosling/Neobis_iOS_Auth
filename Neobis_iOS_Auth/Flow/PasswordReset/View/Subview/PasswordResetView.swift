//
//  PasswordReset.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/24.
//

import UIKit

class PasswordResetView: BaseView {
    
    let passwordResetLabel: CustomLabel = {
        let label = CustomLabel()
        label.customTopLabel(label: label, string: "Сброс пароля")
        return label
    }()
    
    let passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(textField, string: "Придумайте пароль")
        textField.addButtontoTextField(textField)
        return textField
    }()
    
    let againPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(textField, string: "Повторите пароль")
        textField.addButtontoTextField(textField)
        return textField
    }()
    
    let nextButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customProceedButtonSetup(button: button, string: "Далее")
        return button
    }()
    
    let bigLetterLabel: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Заглавная буква")
        return label
    }()
    
    let numberLabel: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Цифры")
        return label
    }()
    
    let specialLabel: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Специальные символы")
        return label
    }()
    
    let matchLabel: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Совпадение пароля")
        return label
    }()
    
    let elipseImageView1: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let elipseImageView2: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let elipseImageView3: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let elipseImageView4: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        addSubview(passwordResetLabel)
        addSubview(passwordTextField)
        addSubview(againPasswordTextField)
        addSubview(nextButton)
    }
    
    override func setupConstraints() {
        passwordResetLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 55))
            make.centerX.equalToSuperview()
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordResetLabel.snp.bottom).offset(flexibleHeight(to: 50))
            make.trailing.leading.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }
        againPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(flexibleHeight(to: 25))
            make.trailing.leading.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }

//        nextButton.snp.makeConstraints { make in
//            make.top.equalTo(overallStackView.snp.bottom).offset(flexibleHeight(to: 40))
//            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
//            make.height.equalTo(flexibleHeight(to: 65))
//        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
