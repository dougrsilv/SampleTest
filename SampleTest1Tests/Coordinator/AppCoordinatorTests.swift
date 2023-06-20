//
//  AppCoordinatorTests.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 17/06/23.
//

import XCTest
@testable import SampleTest1

final class AppCoordinatorTests: XCTestCase {
    
    func test_call_startCoordinator() {
        let sut = MockCoordinator()
        sut.start()
        XCTAssertTrue(sut.checkCallStart)
    }
    
}
