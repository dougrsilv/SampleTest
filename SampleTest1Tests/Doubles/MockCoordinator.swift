//
//  MockCoordinator.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 17/06/23.
//

import UIKit
@testable import SampleTest1

final class MockCoordinator: Coordinator {
    
    private(set) var checkCallStart: Bool = false
    
    func start() {
        checkCallStart = true
    }
}
