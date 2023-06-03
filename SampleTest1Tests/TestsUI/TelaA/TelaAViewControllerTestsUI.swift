//
//  TelaAViewControllerTestsUI.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 01/06/23.
//

import XCTest
import FBSnapshotTestCase
@testable import SampleTest1

final class TelaAViewControllerTestsUI: FBSnapshotTestCase {
    
    func test_screen_telaAViewController() {
        let viewModel = TelaAViewModel()
        let sut = TelaAViewController(viewModel: viewModel)
        self.recordMode = false
        FBSnapshotVerifyView(sut.view)
    }
    
}
