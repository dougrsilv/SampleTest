//
//  TelaACoordinator.swift
//  SampleTest1
//
//  Created by Douglas  Rodrigues  on 16/06/23.
//

import UIKit

final class TelaACoordinator: Coordinator {
    
    //private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = TelaAViewModel()
        let viewController = TelaAViewController(viewModel: viewModel)
        viewModel.coordinator = self
        navigationController.setViewControllers([viewController], animated: false)
    }
    
    func startTelaB(parameter: String) {
        let telaBCoordinator = TelaBCoordinator(navigationController: navigationController,
                                                parameter: parameter)
        //childCoordinators.append(telaBCoordinator)
        telaBCoordinator.start()
    }
}
