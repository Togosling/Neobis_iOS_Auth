//
//  DetailsCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class DetailsCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let detailsViewModel = DetailsViewModel.init()
        detailsViewModel.coordinator = self
        let detailsViewController = DetailsViewController(detailsViewModel: detailsViewModel)
        navigationController.pushViewController(detailsViewController, animated: true)
    }
    
    func gotoCreatePassword() {
        let createPasswordCoordinator = CreatePasswordCoordinator(navigationController: navigationController)
        createPasswordCoordinator.start()
    }
}
