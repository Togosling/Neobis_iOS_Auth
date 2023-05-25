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
