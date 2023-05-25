//
//  CreatePasswordCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CreatePasswordCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let createPasswordViewModel = CreatePasswordViewModel.init()
        createPasswordViewModel.coordinator = self
        let createPasswordViewController = CreatePasswordViewController(createPasswordViewModel: createPasswordViewModel)
        navigationController.pushViewController(createPasswordViewController, animated: true)
    }
    
    func completePasswordCreation() {
        
    }
}
