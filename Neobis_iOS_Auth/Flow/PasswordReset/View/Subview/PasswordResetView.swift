//
//  PasswordReset.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/24.
//

import UIKit

class PasswordResetView: BaseView {
    
    let passwordResetLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "SFProText-Semibold", size: 18)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.12
        label.attributedText = NSMutableAttributedString(string: "Сброс пароля", attributes: [NSAttributedString.Key.kern: -0.41, NSAttributedString.Key.paragraphStyle: paragraphStyle])
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
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Далее", for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
        return button
    }()
    
    let bigLetterLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Заглавная буква", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let numberLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Цифры", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let specialLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Специальные символы", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let matchLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Совпадение пароля", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let elipseImageView1: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "ellipse")
        iv.snp.makeConstraints { make in
            make.width.height.equalTo(9)
        }
        return iv
    }()
    
    let elipseImageView2: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "ellipse")
        iv.snp.makeConstraints { make in
            make.width.height.equalTo(9)
        }
        return iv
    }()
    
    let elipseImageView3: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "ellipse")
        iv.snp.makeConstraints { make in
            make.width.height.equalTo(9)
        }
        return iv
    }()
    
    let elipseImageView4: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "ellipse")
        iv.snp.makeConstraints { make in
            make.width.height.equalTo(9)
        }
        return iv
    }()
    
    lazy var firstStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [elipseImageView1, bigLetterLabel])
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var secondStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [elipseImageView2, numberLabel])
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var thirdStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [elipseImageView3, specialLabel])
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var forthStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [elipseImageView4, matchLabel])
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var overallStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstStackView, secondStackView, thirdStackView, forthStackView])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
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
        addSubview(overallStackView)
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
        overallStackView.snp.makeConstraints { make in
            make.top.equalTo(againPasswordTextField.snp.bottom).offset(flexibleHeight(to: 28))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 100))
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(overallStackView.snp.bottom).offset(flexibleHeight(to: 40))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
