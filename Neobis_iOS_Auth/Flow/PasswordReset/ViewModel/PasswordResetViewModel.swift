//
//  PasswordResetViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/24.
//

import UIKit

protocol PasswordResetViewModelType {
    func finishPasswordReset()
}

class PasswordResetViewModel: PasswordResetViewModelType {
    
    var coordinator = PasswordResetCoordinator(navigationController: BaseNavigationController.init())
    
    func finishPasswordReset() {
        coordinator.finishPasswordReset()
    }

}
