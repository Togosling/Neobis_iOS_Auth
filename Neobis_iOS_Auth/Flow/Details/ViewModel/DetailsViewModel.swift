//
//  DetailsViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

protocol DetailsViewModelType {
    
}

class DetailsViewModel: DetailsViewModelType {
    
    var coordinator = DetailsCoordinator(navigationController: BaseNavigationController.init())
}
