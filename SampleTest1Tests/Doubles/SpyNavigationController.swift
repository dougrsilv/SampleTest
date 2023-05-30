//
//  SpyNavigationController.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 26/05/23.
//

import UIKit

final class SpyNavigationController: UINavigationController {
    
    var pushViewController: UIViewController?
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushViewController = viewController
        super.pushViewController(viewController, animated: animated)
    }
}
