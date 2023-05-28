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
    fileprivate let passwordResetSuccesfullyView = PasswordResetSuccesfullyAllertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    func showPasswordResetAllert() {
        let allertWidth = view.frame.width - 24
        view.addSubview(passwordResetSuccesfullyView)
        passwordResetSuccesfullyView.frame = .init(x: 12, y: -64, width: allertWidth, height: 64)
        UIView.animate(withDuration: 1) {[weak self] in
            self?.passwordResetSuccesfullyView.frame = .init(x: 12, y: 56, width: allertWidth, height: 64)
        } completion: { _ in
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
                UIView.animate(withDuration: 1) {
                    [weak self] in
                    self?.passwordResetSuccesfullyView.frame = .init(x: 12, y: -64, width: allertWidth, height: 64)
                } completion: { _ in
                    self.passwordResetSuccesfullyView.removeFromSuperview()
                }
            }
        }
    }
    
    override func addTargets() {
        loginView.enterButton.addTarget(self, action: #selector(handleEnter), for: .touchUpInside)
        loginView.forgotPasswordButton.addTarget(self, action: #selector(handleForgotPassword), for: .touchUpInside)
        loginView.mailTextField.addTarget(self, action: #selector(validation), for: .editingChanged)
        loginView.passwordTextField.addTarget(self, action: #selector(validation), for: .editingChanged)
    }
    
    @objc fileprivate func validation() {
        if loginView.mailTextField.isEmail() && loginView.passwordTextField.isPassword() {
            loginView.enterButton.customProceedEnabledButtonSetup(string: loginView.enterButton.currentTitle ?? "")
        } else {
            loginView.enterButton.customProceedDisabledButtonSetup(string: loginView.enterButton.currentTitle ?? "")
        }
    }
        
    @objc fileprivate func handleEnter() {
        loginViewModel.gotoMain()
    }
    
    @objc fileprivate func handleForgotPassword() {
        loginViewModel.gotoForgotPassword()
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
