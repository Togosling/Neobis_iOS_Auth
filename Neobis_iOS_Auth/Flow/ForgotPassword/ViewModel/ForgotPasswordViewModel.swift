//
//  ForgotPasswordViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

protocol ForgotPasswordViewModelType {
    func goBack()
    func completePasswordRecovery()
}

class ForgotPasswordViewModel: ForgotPasswordViewModelType {
    
    var coordinator = ForgotPasswordCoordinator(navigationController: BaseNavigationController.init())
    
    func goBack() {
        coordinator.goBack()
    }
    
    func completePasswordRecovery() {
        coordinator.completePasswordRecovery()
    }
}
