//
//  RegisterViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

protocol RegisterViewModelType {
    func goBack()
    func gotoDetails()
    func completeRegistration()
}

class RegisterViewModel: RegisterViewModelType {
    
    var coordinator = RegisterCoordinator(navigationController: BaseNavigationController.init())
    
    func goBack() {
        coordinator.goBack()
    }
    
    func completeRegistration() {
        coordinator.completeRegistration()
    }
    
    func gotoDetails() {
        coordinator.gotoDetails()
    }
}
