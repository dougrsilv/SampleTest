//
//  TelaAViewModelTests.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 24/05/23.
//

import XCTest
@testable import SampleTest1

final class TelaAViewModelTests: XCTestCase {
    
    private let delegateSpy = TelaAViewModelOutputSpy()
    private let sut = TelaAViewModel()
    
    override func setUp() async throws {
        sut.delegate = delegateSpy
    }
    
    func test_check_message_blankSpace() {
        sut.check(message: "")
        XCTAssert(delegateSpy.checkMessageShowAlert == "Preencha a mensagem para continuar")
    }
    
    func test_check_output_data() {
        sut.check(message: "tests")
        XCTAssert(delegateSpy.checkMessageNavigateToScreenB == "tests")
    }
    
    func test_check_delegate_showAlert() {
        sut.check(message: "")
        XCTAssertTrue(delegateSpy.checkShowAlert)
    }
    
    func test_check_delegate_navigateToScreenB() {
        sut.check(message: "tests")
        XCTAssertTrue(delegateSpy.checkNavigateToScreenB)
    }
}
