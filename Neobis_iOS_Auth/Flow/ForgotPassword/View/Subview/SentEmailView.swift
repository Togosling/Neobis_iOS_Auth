//
//  SentEmailView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class SentEmailView: BaseView {
    
    let logoImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customLogoImageViewSetup(iv: iv)
        return iv
    }()
    
    let infoLabel: CustomLabel = {
        let label = CustomLabel()
        label.customInfoLabel(label: label)
        return label
    }()
    
    let closeButton: CustomButton = {
        let button = CustomButton(type: .system)
        button.customProceedButtonSetup(button: button, string: "Закрыть")
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
