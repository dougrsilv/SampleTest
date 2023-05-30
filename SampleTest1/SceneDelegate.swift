//
//  SceneDelegate.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 22/05/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)

        let viewModel = TelaAViewModel()
        let viewController = TelaAViewController(viewModel: viewModel)
        window?.rootViewController = UINavigationController(
            rootViewController: viewController
        )
        window?.makeKeyAndVisible()
    }

}

