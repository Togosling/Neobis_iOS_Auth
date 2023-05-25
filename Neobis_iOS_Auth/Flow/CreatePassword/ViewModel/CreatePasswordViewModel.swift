//
//  CreatePasswordViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

protocol CreatePasswordViewModelType {
    func completePasswordCreation()
    
}

class CreatePasswordViewModel: CreatePasswordViewModelType {
    
    var coordinator = CreatePasswordCoordinator.init(navigationController: BaseNavigationController.init())
    
    func completePasswordCreation() {
        coordinator.completePasswordCreation()
    }
}
