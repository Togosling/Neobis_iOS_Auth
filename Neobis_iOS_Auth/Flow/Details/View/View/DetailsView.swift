//
//  DetailsView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import Foundation

class DetailsView: BaseView {
    
    let nameTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(string: "Имя")
        return textField
    }()
    
    let surnameTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(string: "Фамилия")
        return textField
    }()
    
    let dateOfBirthTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(string: "День рождения")
        textField.keyboardType = .numberPad
        textField.tag = 1
        return textField
    }()
    
    let mailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customTextFieldSetup(string: "Электронная почта")
        return textField
    }()
    
    let registerButton: CustomButton = {
        let button = CustomButton()
        button.customProceedDisabledButtonSetup(string: "Зарегистрироваться")
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        [nameTextField,surnameTextField,dateOfBirthTextField,mailTextField,registerButton].forEach { subView in
            addSubview(subView)
        }
    }
    
    override func setupConstraints() {
        nameTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 84))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }
        surnameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(flexibleHeight(to: 24))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }
        dateOfBirthTextField.snp.makeConstraints { make in
            make.top.equalTo(surnameTextField.snp.bottom).offset(flexibleHeight(to: 24))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }
        mailTextField.snp.makeConstraints { make in
            make.top.equalTo(dateOfBirthTextField.snp.bottom).offset(flexibleHeight(to: 24))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 60))
        }
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(mailTextField.snp.bottom).offset(flexibleHeight(to: 44))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
