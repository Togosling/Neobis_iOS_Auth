//
//  SplashViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

protocol SplashViewModelType {
    func gotoRegister()
    func gotoLogin()
}
class SplashViewModel: SplashViewModelType {
    
    var coordinator = SplashCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoRegister() {
        coordinator.gotoRegister()
    }
    
    func gotoLogin() {
        coordinator.gotoLogin()
    }
}
