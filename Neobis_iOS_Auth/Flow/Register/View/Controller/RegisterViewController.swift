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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        registerView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
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
