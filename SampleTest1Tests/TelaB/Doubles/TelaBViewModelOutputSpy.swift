//
//  TelaBViewModelOutputSpy.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 25/05/23.
//

import Foundation
@testable import SampleTest1

final class TelaBViewModelOutputSpy: TelaBViewModelOutput {
    
    private(set) var didShowMessageCalled: Bool = false
    private(set) var didTextMessage: String = ""
    private(set) var didLettersCount: Int = 0
    private(set) var didWordsCount: Int = 0
    private(set) var didUpperCount: Int = 0
    private(set) var didLowerCount: Int = 0
    
    func showMessage(_ message: MessageModel) {
        didShowMessageCalled = true
        didTextMessage = message.message
        didLettersCount = message.lettersCount
        didWordsCount = message.wordsCount
        didUpperCount = message.upperCount
        didLowerCount = message.lowerCount
    }
    
}
