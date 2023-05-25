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
    
    let firstPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let secondPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let thirdPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    let forthPasswordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.customOTPTextField(textField)
        return textField
    }()
    
    lazy var passwordTextFieldsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstPasswordTextField,secondPasswordTextField,thirdPasswordTextField,forthPasswordTextField])
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    let requestAgain: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "Повторный запрос")
        return label
    }()
    
    let circleProgressView: CircularProgressView = {
        let circle = CircularProgressView(frame: .init(x: 0, y: 0, width: 16, height: 16), lineWidth: 3, rounded: false)
        circle.progressColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        circle.trackColor = UIColor(red: 0.875, green: 0.878, blue: 0.898, alpha: 1)
        circle.timeToFill = 60
        circle.progress = 1
        return circle
    }()
    
    let timeLabel: CustomLabel = {
        let label = CustomLabel()
        label.customRequirmentsLabel(label: label, string: "00:58")
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        [registerLabel,backButton,logoImageView,sentPasswordLabel,passwordTextFieldsStackView,requestAgain,circleProgressView,timeLabel].forEach { subView in
            addSubview(subView)
        }
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
        circleProgressView.snp.makeConstraints { make in
            make.top.equalTo(requestAgain.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 152.5))
        }
        timeLabel.snp.makeConstraints { make in
            make.top.equalTo(requestAgain.snp.bottom).offset(flexibleHeight(to: 4))
            make.leading.equalTo(circleProgressView.snp.trailing).offset(flexibleWidth(to: 24))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
