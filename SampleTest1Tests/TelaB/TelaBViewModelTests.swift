//
//  TelaBViewModelTests.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 25/05/23.
//

import XCTest
@testable import SampleTest1

final class TelaBViewModelTests: XCTestCase {
    
    func test_called_telaBViewModelOutput() {
        let sut = TelaBViewModel(message: "Teste")
        let telaBViewModelOutputSpy = TelaBViewModelOutputSpy()
        sut.delegate = telaBViewModelOutputSpy
        sut.start()
        XCTAssertTrue(telaBViewModelOutputSpy.didShowMessageCalled)
    }
    
    func test_a_word_called_messageModel() {
        let sut = TelaBViewModel(message: "Teste")
        let telaBViewModelOutputSpy = TelaBViewModelOutputSpy()
        
        sut.delegate = telaBViewModelOutputSpy
        sut.start()
        
        XCTAssert(telaBViewModelOutputSpy.didTextMessage == "Teste")
        XCTAssert(telaBViewModelOutputSpy.didLettersCount == 5)
        XCTAssert(telaBViewModelOutputSpy.didWordsCount == 1)
        XCTAssert(telaBViewModelOutputSpy.didUpperCount == 1)
        XCTAssert(telaBViewModelOutputSpy.didLowerCount == 4)
    }
    
    func test_tiny_word_called_messageModel() {
        let sut = TelaBViewModel(message: "teste")
        let telaBViewModelOutputSpy = TelaBViewModelOutputSpy()
        
        sut.delegate = telaBViewModelOutputSpy
        sut.start()
        
        XCTAssert(telaBViewModelOutputSpy.didTextMessage == "teste")
        XCTAssert(telaBViewModelOutputSpy.didLettersCount == 5)
        XCTAssert(telaBViewModelOutputSpy.didWordsCount == 1)
        XCTAssert(telaBViewModelOutputSpy.didUpperCount == 0)
        XCTAssert(telaBViewModelOutputSpy.didLowerCount == 5)
    }
    
    func test_different_word_called_messageModel() {
        let sut = TelaBViewModel(message: "teste coisa")
        let telaBViewModelOutputSpy = TelaBViewModelOutputSpy()
        
        sut.delegate = telaBViewModelOutputSpy
        sut.start()
        
        XCTAssert(telaBViewModelOutputSpy.didTextMessage == "teste coisa")
        XCTAssert(telaBViewModelOutputSpy.didLettersCount == 10)
        XCTAssert(telaBViewModelOutputSpy.didWordsCount == 2)
        XCTAssert(telaBViewModelOutputSpy.didUpperCount == 0)
        XCTAssert(telaBViewModelOutputSpy.didLowerCount == 10)
    }
}
