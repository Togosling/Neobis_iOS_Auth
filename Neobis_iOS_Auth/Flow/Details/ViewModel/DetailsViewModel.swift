//
//  DetailsViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

protocol DetailsViewModelType {
    func gotoCreatePassword()
    
}

class DetailsViewModel: DetailsViewModelType {
    
    var coordinator = DetailsCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoCreatePassword() {
        coordinator.gotoCreatePassword()
    }
}
