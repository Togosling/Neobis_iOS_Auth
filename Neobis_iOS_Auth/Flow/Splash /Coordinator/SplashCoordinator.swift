//
//  SplashCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class SplashCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let splashViewModel = SplashViewModel.init()
        splashViewModel.coordinator = self
        let splashViewController = SplashViewController(splashViewModel: splashViewModel)
        navigationController.pushViewController(splashViewController, animated: false)
    }
    
    func pop() {
        
    }
    
}
