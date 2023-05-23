//
//  LoginView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class LoginView: BaseView {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "smile")
        return iv
    }()
    
    let mailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        textField.textColor = .black
        textField.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        textField.attributedPlaceholder = NSMutableAttributedString(string: "Электронная почта", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.foregroundColor: UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)])
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        textField.textColor = .black
        textField.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        textField.attributedPlaceholder = NSMutableAttributedString(string: "Пароль", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle,NSAttributedString.Key.foregroundColor: UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)])
        textField.layer.cornerRadius = 8
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let enterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Забыли пароль?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        return button
    }()
    
    let showPasswordButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "hide")
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10)
        configuration.baseBackgroundColor = .clear
        let button = UIButton(configuration: configuration)
        return button
    }()
            
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
        addButtontoTextField()
    }
    
    fileprivate func addButtontoTextField() {
        passwordTextField.rightView = showPasswordButton
        passwordTextField.rightViewMode = .always
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

