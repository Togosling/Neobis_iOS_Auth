//
//  ForgotPasswordView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class ForgotPasswordView: BaseView {
    
    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "SFProText-Semibold", size: 18)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.12
        label.attributedText = NSMutableAttributedString(string: "Сброс пароля", attributes: [NSAttributedString.Key.kern: -0.41, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "back"), for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 0.2)
        button.layer.cornerRadius = 12
        return button
    }()
    
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
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Далее", for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
    }
        
    override func setupViews() {
        addSubview(forgotPasswordLabel)
        addSubview(backButton)
        addSubview(logoLabel)
        addSubview(logoImageView)
        addSubview(mailTextField)
        addSubview(nextButton)
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
