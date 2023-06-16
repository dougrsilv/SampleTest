//
//  AppCoordinator.swift
//  SampleTest1
//
//  Created by Douglas  Rodrigues  on 16/06/23.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let naviagtionController = UINavigationController()
        
        let telaACoordinator = TelaACoordinator(navigationController: naviagtionController)
        
        childCoordinators.append(telaACoordinator)
        telaACoordinator.start()
        
        window.rootViewController = naviagtionController
        window.makeKeyAndVisible()
    }
}
