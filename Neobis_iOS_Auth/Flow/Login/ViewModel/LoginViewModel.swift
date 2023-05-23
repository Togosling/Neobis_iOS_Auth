//
//  LoginViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

protocol LoginViewModelType {
    func gotoMain()
    func gotoForgotPassword()
}

class LoginViewModel: LoginViewModelType {
    
    var coordinator = LoginCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoMain() {
        coordinator.gotoMain()
    }
    
    func gotoForgotPassword() {
        coordinator.gotoForgotPassword()
    }
}
