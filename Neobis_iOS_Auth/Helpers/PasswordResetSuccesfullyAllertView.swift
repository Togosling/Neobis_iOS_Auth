//
//  PasswordResetSuccesfullyView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/26.
//

import UIKit

class PasswordResetSuccesfullyAllertView: BaseView {
    
    let bellImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.customBellImageViewSetup()
        return iv
    }()
    
    let passwordResetSuccesfullyLabel: CustomLabel = {
        let label = CustomLabel()
        label.customResetPasswordLabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        layer.cornerRadius = 16
    }
    
    override func setupViews() {
        [bellImageView, passwordResetSuccesfullyLabel].forEach { subView in
            addSubview(subView)
        }
    }
    
    override func setupConstraints() {
        bellImageView.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
        }
        passwordResetSuccesfullyLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(bellImageView.snp.trailing).offset(flexibleWidth(to: 10))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
