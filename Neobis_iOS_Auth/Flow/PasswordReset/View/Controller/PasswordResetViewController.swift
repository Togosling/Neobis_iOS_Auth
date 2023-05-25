//
//  PasswordResetViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/24.
//

import UIKit

class PasswordResetViewController: BaseViewController {
    
    fileprivate let passwordResetViewModel: PasswordResetViewModelType
    fileprivate let passwordResetView = PasswordResetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    override func textFieldDelegate() {
        passwordResetView.passwordTextField.delegate = self
        passwordResetView.againPasswordTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(passwordResetView)
    }
    
    override func setupConstraints() {
        passwordResetView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(passwordResetViewModel: PasswordResetViewModelType) {
        self.passwordResetViewModel = passwordResetViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
