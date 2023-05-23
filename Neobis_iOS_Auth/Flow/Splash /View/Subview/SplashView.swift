//
//  SplashView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class SplashView: BaseView {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "smile")
        return iv
    }()
    
    let logoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 40)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Смейся \nи улыбайся каждый день", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let beginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Начать пользоваться", for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Есть аккаунт? Войти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
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
