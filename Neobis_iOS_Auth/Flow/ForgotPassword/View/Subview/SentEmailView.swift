//
//  SentEmailView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class SentEmailView: BaseView {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "smile")
        return iv
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.162, green: 0.161, blue: 0.162, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 18)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        let text = NSMutableAttributedString()
        text.append(NSAttributedString(string: "На вашу почту \n", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle]))
        text.append(NSAttributedString(string: "«dojacat01.gmail.com»", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 93/255, green: 95/255, blue: 239/255, alpha: 1)]))
        text.append(NSAttributedString(string: " было \n отправлено письмо",attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle]))
        label.attributedText = text
        label.textAlignment = .center
        return label
    }()
    
    let closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle("Закрыть", for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 32
    }
    
    override func setupViews() {
        addSubview(logoImageView)
        addSubview(infoLabel)
        addSubview(closeButton)
    }
    
    override func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 24))
            make.centerX.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 120))
            make.height.equalTo(flexibleHeight(to: 120))
        }
        infoLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(flexibleHeight(to: 24))
            make.centerX.equalToSuperview()
        }
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(infoLabel.snp.bottom).offset(flexibleHeight(to: 41))
            make.centerX.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 280))
            make.height.equalTo(flexibleHeight(to: 44))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
