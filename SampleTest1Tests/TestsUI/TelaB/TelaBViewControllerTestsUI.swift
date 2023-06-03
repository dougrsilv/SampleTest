//
//  TelaBViewControllerTestsUI.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 03/06/23.
//

import XCTest
import FBSnapshotTestCase
@testable import SampleTest1

final class TelaBViewControllerTestsUI: FBSnapshotTestCase {
    
    func test_screen_telaBViewController() {
        let viewModel = TelaBViewModel(message: "Teste de tela")
        let sut = TelaBViewController(viewModel: viewModel)
        
        self.recordMode = false
        FBSnapshotVerifyView(sut.view)
    }

}
