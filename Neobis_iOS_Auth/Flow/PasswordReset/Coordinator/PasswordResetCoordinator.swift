//
//  PasswordResetCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/24.
//

import UIKit

class PasswordResetCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let passwordResetViewModel = PasswordResetViewModel.init()
        passwordResetViewModel.coordinator = self
        let passwordResetViewController = PasswordResetViewController(passwordResetViewModel: passwordResetViewModel)
        navigationController.pushViewController(passwordResetViewController, animated: true)
    }
    
    func finishPasswordReset() {
        guard let vc = navigationController.viewControllers.last(where: { $0.isKind(of: LoginViewController.self) }) else {return}
        if let vc = vc as? LoginViewController {
            navigationController.popToViewController(vc, animated: true)
            vc.showPasswordResetAllert()
        }
    }
}
