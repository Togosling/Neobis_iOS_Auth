//
//  RegisterController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class RegisterViewController: BaseViewController {
    
    fileprivate let registerViewModel: RegisterViewModelType
    fileprivate let registerView = RegisterView()
    fileprivate let sentEmailView = SentEmailAllertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        registerView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        registerView.nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        registerView.mailTextField.addTarget(self, action: #selector(mailValidation), for: .editingChanged)
        sentEmailView.closeButton.addTarget(self, action: #selector(handleClose), for: .touchUpInside)
    }
    
    @objc fileprivate func mailValidation() {
        if registerView.mailTextField.isEmail() {
            registerView.nextButton.customProceedEnabledButtonSetup(string: registerView.nextButton.currentTitle ?? "")
        } else {
            registerView.nextButton.customProceedDisabledButtonSetup(string: registerView.nextButton.currentTitle ?? "")
        }
    }
    
    @objc fileprivate func handleClose() {
        view.subviews.forEach { subView in
            if subView != registerView {
                subView.removeFromSuperview()
            }
        }
        registerViewModel.gotoDetails()
    }
    
    @objc fileprivate func handleNext() {
        registerViewModel.completeRegistration()
        
        view.applyBlurEffect()
        sentEmailView.infoLabel.customInfoLabel(string: registerView.mailTextField.text ?? "")
        view.addSubview(sentEmailView)
        sentEmailView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 343))
            make.height.equalTo(flexibleHeight(to: 343))
        }
    }
    
    @objc fileprivate func handleBack() {
        registerViewModel.goBack()
    }
    
    override func textFieldDelegate() {
        registerView.mailTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(registerView)
    }
    
    override func setupConstraints() {
        registerView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(registerViewModel: RegisterViewModelType) {
        self.registerViewModel = registerViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
