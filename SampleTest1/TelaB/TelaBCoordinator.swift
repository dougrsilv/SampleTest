//
//  TelaBCoordinator.swift
//  SampleTest1
//
//  Created by Douglas  Rodrigues  on 16/06/23.
//

import UIKit

final class TelaBCoordinator: Coordinator {
    
    //private(set) var childCoordinators: [Coordinator] = []
    private(set) var parameter: String
    private let navigationController: UINavigationController
    
    init(navigationController:  UINavigationController, parameter: String) {
        self.navigationController = navigationController
        self.parameter = parameter
    }
    
    func start() {
        let viewModel = TelaBViewModel(message: parameter)
        let viewController = TelaBViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
