//
//  SplashViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    fileprivate let splashViewModel: SplashViewModelType
    fileprivate let splashView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTargets()
        setupViews()
        setupConstraints()
    }
    
    fileprivate func addTargets() {
        splashView.beginButton.addTarget(self, action: #selector(handleBegin), for: .touchUpInside)
        splashView.loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
    }
    
    @objc fileprivate func handleBegin() {
        splashViewModel.gotoRegister()
    }
    
    @objc fileprivate func handleLogin() {
        splashViewModel.gotoLogin()
    }
    
    fileprivate func setupViews() {
        view.addSubview(splashView)
    }
    
    fileprivate func setupConstraints() {
        splashView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(splashViewModel: SplashViewModelType) {
        self.splashViewModel = splashViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
