//
//  CreatePasswordViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CreatePasswordViewController: BaseViewController {
    
    fileprivate let createPasswordViewModel: CreatePasswordViewModelType
    fileprivate let createPasswordView = CreatePasswordView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        createPasswordView.nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        createPasswordView.passwordTextField.addTarget(self, action: #selector(passwordValidation), for: .editingChanged)
        createPasswordView.againPasswordTextField.addTarget(self, action: #selector(passwordValidation), for: .editingChanged)
    }
    
    @objc fileprivate func passwordValidation() {
        if createPasswordView.passwordTextField.hasUpperCaseLetters(){
            createPasswordView.bigLetterLabel.textColor = blue
            createPasswordView.firstElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            createPasswordView.bigLetterLabel.textColor = gray
            createPasswordView.firstElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if createPasswordView.passwordTextField.hasNumbers() {
            createPasswordView.numberLabel.textColor = blue
            createPasswordView.secondElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            createPasswordView.numberLabel.textColor = gray
            createPasswordView.secondElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if createPasswordView.passwordTextField.hasSpecialSymbols() {
            createPasswordView.specialLabel.textColor = blue
            createPasswordView.thirdElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            createPasswordView.specialLabel.textColor = gray
            createPasswordView.thirdElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if createPasswordView.passwordTextField.isPassword() && createPasswordView.againPasswordTextField.isPassword() && createPasswordView.passwordTextField.text == createPasswordView.againPasswordTextField.text {
            createPasswordView.nextButton.customProceedEnabledButtonSetup(string: createPasswordView.nextButton.currentTitle ?? "")
            createPasswordView.matchLabel.textColor = blue
            createPasswordView.forthElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            createPasswordView.nextButton.customProceedDisabledButtonSetup(string: createPasswordView.nextButton.currentTitle ?? "")
            createPasswordView.matchLabel.textColor = gray
            createPasswordView.forthElipseImageView.image = UIImage(named: "ellipse")
        }
    }
    
    @objc fileprivate func handleNext() {
        createPasswordViewModel.completePasswordCreation()
    }
        
    override func textFieldDelegate() {
        createPasswordView.passwordTextField.delegate = self
        createPasswordView.againPasswordTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(createPasswordView)
    }
    
    override func setupConstraints() {
        createPasswordView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(createPasswordViewModel: CreatePasswordViewModelType) {
        self.createPasswordViewModel = createPasswordViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
