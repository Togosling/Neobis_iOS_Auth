//
//  ForgotPasswordController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class ForgotPasswordController: BaseViewController {
    
    fileprivate let forgotPasswordViewModel: ForgotPasswordViewModelType
    fileprivate let forgotPasswordView = ForgotPasswordView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addTargets() {
        forgotPasswordView.nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        forgotPasswordView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }
    
    @objc fileprivate func handleNext() {
        forgotPasswordViewModel.completePasswordRecovery()
        view.applyBlurEffect()
        
//        view.addSubview(SentEmailView(frame: .init(x: 150, y: 150, width: 343, height: 343)))
    }
    
    @objc fileprivate func handleBack() {
        forgotPasswordViewModel.goBack()
    }
    
    override func textFieldDelegate() {
        forgotPasswordView.mailTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(forgotPasswordView)
    }
    
    override func setupConstraints() {
        forgotPasswordView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(forgotPasswordViewModel: ForgotPasswordViewModelType) {
        self.forgotPasswordViewModel = forgotPasswordViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
