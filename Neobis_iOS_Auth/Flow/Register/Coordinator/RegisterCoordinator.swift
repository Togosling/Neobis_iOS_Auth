//
//  RegisterCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class RegisterCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let registerViewModel = RegisterViewModel.init()
        registerViewModel.coordinator = self
        let registerViewController = RegisterViewController(registerViewModel: registerViewModel)
        navigationController.pushViewController(registerViewController, animated: true)
    }
    
    func goBack() {
        navigationController.popViewController(animated: true)
    }
    
    func completeRegistration() {
        
    }
    
    func gotoDetails() {
        let detailsCoordinator = DetailsCoordinator(navigationController: navigationController)
        detailsCoordinator.start()
    }
}
