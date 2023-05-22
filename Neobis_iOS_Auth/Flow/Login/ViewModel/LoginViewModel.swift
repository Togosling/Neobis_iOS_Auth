//
//  LoginViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

protocol LoginViewModelType {
    
}

class LoginViewModel: LoginViewModelType {
    
    var coordinator = LoginCoordinator(navigationController: BaseNavigationController.init())
    
}
