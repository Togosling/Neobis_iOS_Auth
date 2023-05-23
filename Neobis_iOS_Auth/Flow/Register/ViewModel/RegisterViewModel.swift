//
//  RegisterViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

protocol RegisterViewModelType {
    func goBack()
}

class RegisterViewModel: RegisterViewModelType {
    
    var coordinator = RegisterCoordinator(navigationController: BaseNavigationController.init())
    
    func goBack() {
        coordinator.goBack()
    }
}
