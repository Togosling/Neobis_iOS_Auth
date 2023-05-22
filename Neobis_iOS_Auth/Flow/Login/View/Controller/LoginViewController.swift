//
//  LoginViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    fileprivate let loginViewModel: LoginViewModelType
    fileprivate let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    fileprivate func setupViews() {
        view.addSubview(loginView)
    }
    
    fileprivate func setupConstraints() {
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
