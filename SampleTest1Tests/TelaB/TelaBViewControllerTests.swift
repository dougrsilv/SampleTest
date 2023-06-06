//
//  TelaBViewControllerTests.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 06/06/23.
//

import XCTest
@testable import SampleTest1

final class TelaBViewControllerTests: XCTestCase {
    
    func test_call_viewDidLoad_ViewControllerTelaB() {
        let viewModelB = TelaBViewModelInputSpy()
        lazy var telaB = TelaBViewController(viewModel: viewModelB)
        telaB.viewDidLoad()
        XCTAssertTrue(viewModelB.checkMethodsViewDidLoad)
    }
    
}
