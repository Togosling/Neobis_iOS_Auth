//
//  SplashView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class SplashView: BaseView {
    
    let logoImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customLogoImageViewSetup(iv: iv)
        return iv
    }()
    
    let logoLabel: CustomLabel = {
        let label = CustomLabel()
        label.customLogoLabel(label: label)
        return label
    }()
    
    let beginButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customProceedButtonSetup(button: button, string: "Начать пользоваться")
        return button
    }()
    
    let loginButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customBottomButtonSetup(button: button, string: "Есть аккаунт? Войти")
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
    
    override func setupViews() {
        addSubview(logoImageView)
        addSubview(logoLabel)
        addSubview(beginButton)
        addSubview(loginButton)
    }
    
    override func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 154))
            make.width.equalTo(flexibleWidth(to: 200))
            make.height.equalTo(flexibleHeight(to: 200))
            make.centerX.equalToSuperview()
        }
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
        }
        beginButton.snp.makeConstraints { make in
            make.top.equalTo(logoLabel.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(beginButton.snp.bottom).offset(flexibleHeight(to: 41))
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
