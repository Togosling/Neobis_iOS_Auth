//
//  AppDelegate.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appCoordinator : AppCoordinator?
    
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         window = UIWindow(frame: UIScreen.main.bounds)
         let navigationController = BaseNavigationController.init()
         appCoordinator = AppCoordinator(navigationController: navigationController)
         appCoordinator!.start()
         window!.rootViewController = navigationController
         window!.makeKeyAndVisible()
         return true
     }
}

