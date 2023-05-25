//
//  OTPViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

protocol OTPViewModelType {
    func goBack()
    
}

class OTPViewModel: OTPViewModelType {
    
    var coordinator = OTPCoordinator(navigationController: BaseNavigationController.init())
    
    func goBack() {
        coordinator.goBack()
    }
}
