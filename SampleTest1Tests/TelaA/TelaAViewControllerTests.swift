//
//  TelaAViewControllerTests.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 23/05/23.
//

import XCTest
@testable import SampleTest1

final class TelaAViewControllerTests: XCTestCase {
    
    private let viewModel = TelaAViewModel()
    private let delegateSpy = TelaAViewModelOutputSpy()
    private lazy var sut = TelaAViewController(viewModel: viewModel)
    
    override func setUp() async throws {
        viewModel.delegate = delegateSpy
    }
    
    func test_showAlert() {
        viewModel.check(message: "")
        sut.showAlert(with: "")
        XCTAssert(delegateSpy.checkShowAlert)
    }
    
    func test_navigateToScreenB() {
        viewModel.check(message: "teste")
        sut.navigateToScreenB(with: "")
        XCTAssertTrue(delegateSpy.checkNavigateToScreenB)
    }
    
    func test_naviagationController() {
        let spy = SpyNavigationController(rootViewController: sut)
        sut.navigateToScreenB(with: "")
        XCTAssertTrue(spy.pushViewController is TelaBViewController)
    }
    
    func test_poupUp_showAlert() {
        UIApplication.shared.keyWindow?.rootViewController = sut
        sut.showAlert(with: "")
        XCTAssertTrue(sut.presentedViewController is UIAlertController)
        XCTAssertEqual(sut.presentedViewController?.title, "Ops")
    }
}
