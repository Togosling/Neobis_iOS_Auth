//
//  LoginViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class LoginViewController: BaseViewController {
    
    fileprivate let loginViewModel: LoginViewModelType
    fileprivate let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        loginView.showPasswordButton.addTarget(self, action: #selector(handleShowPassword), for: .touchUpInside)
        loginView.enterButton.addTarget(self, action: #selector(handleEnter), for: .touchUpInside)
        loginView.forgotPasswordButton.addTarget(self, action: #selector(handleForgotPassword), for: .touchUpInside)
    }
    
    @objc fileprivate func handleEnter() {
        loginViewModel.gotoMain()
    }
    
    @objc fileprivate func handleForgotPassword() {
        loginViewModel.gotoForgotPassword()
    }
    
    @objc fileprivate func handleShowPassword(sender: UIButton) {
        if sender.configuration?.image == UIImage(named: "hide") {
            loginView.showPasswordButton.configuration?.image = UIImage(named: "show")?.withTintColor(.black)
            loginView.passwordTextField.isSecureTextEntry = false
        } else {
            loginView.showPasswordButton.configuration?.image = UIImage(named: "hide")
            loginView.passwordTextField.isSecureTextEntry = true
        }
    }
    
    override func textFieldDelegate() {
        loginView.mailTextField.delegate = self
        loginView.passwordTextField.delegate = self
    }
        
    override func setupViews() {
        view.addSubview(loginView)
    }
    
    override func setupConstraints() {
        loginView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(loginViewModel: LoginViewModelType) {
        self.loginViewModel = loginViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
