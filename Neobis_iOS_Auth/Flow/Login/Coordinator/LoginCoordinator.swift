//
//  LoginCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class LoginCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginViewModel = LoginViewModel.init()
        loginViewModel.coordinator = self
        let loginViewController = LoginViewController(loginViewModel: loginViewModel)
        navigationController.pushViewController(loginViewController, animated: true)
    }
}
