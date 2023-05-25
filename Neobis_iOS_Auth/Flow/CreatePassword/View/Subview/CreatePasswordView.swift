//
//  CreatePasswordView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CreatePasswordView: BaseView {
    
    let passwordResetLabel: CustomLabel = {
        let label = CustomLabel()
        label.customTopLabel(label: label, string: "Создание пароля")
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
    
    let firstElipseImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let secondElipseImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let thirdElipseImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    let forthElipseImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customEllipseImageViewSetup(iv: iv)
        return iv
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        [passwordResetLabel,passwordTextField,againPasswordTextField,nextButton,bigLetterLabel,numberLabel,specialLabel,matchLabel,firstElipseImageView,secondElipseImageView,thirdElipseImageView,forthElipseImageView].forEach { subView in
            addSubview(subView)
        }
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
        firstElipseImageView.snp.makeConstraints { make in
            make.top.equalTo(againPasswordTextField.snp.bottom).offset(flexibleHeight(to: 36))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.height.equalTo(9)
        }
        bigLetterLabel.snp.makeConstraints { make in
            make.top.equalTo(againPasswordTextField.snp.bottom).offset(flexibleHeight(to: 28))
            make.leading.equalTo(firstElipseImageView.snp.trailing).offset(flexibleWidth(to: 5))
        }
        
        secondElipseImageView.snp.makeConstraints { make in
            make.top.equalTo(firstElipseImageView.snp.bottom).offset(flexibleHeight(to: 20))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.height.equalTo(9)
        }
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(bigLetterLabel.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalTo(secondElipseImageView.snp.trailing).offset(flexibleWidth(to: 5))
        }
        
        thirdElipseImageView.snp.makeConstraints { make in
            make.top.equalTo(secondElipseImageView.snp.bottom).offset(flexibleHeight(to: 20))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.height.equalTo(9)
        }
        specialLabel.snp.makeConstraints { make in
            make.top.equalTo(numberLabel.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalTo(thirdElipseImageView.snp.trailing).offset(flexibleWidth(to: 5))
        }
        
        forthElipseImageView.snp.makeConstraints { make in
            make.top.equalTo(thirdElipseImageView.snp.bottom).offset(flexibleHeight(to: 20))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.width.height.equalTo(9)
        }
        matchLabel.snp.makeConstraints { make in
            make.top.equalTo(specialLabel.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalTo(forthElipseImageView.snp.trailing).offset(flexibleWidth(to: 5))
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(matchLabel.snp.bottom).offset(flexibleHeight(to: 40))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
