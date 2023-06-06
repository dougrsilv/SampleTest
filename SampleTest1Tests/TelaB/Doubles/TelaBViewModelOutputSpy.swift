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
    private(set) var didTextMessage: String?
    private(set) var didLettersCount: Int?
    private(set) var didWordsCount: Int?
    private(set) var didUpperCount: Int?
    private(set) var didLowerCount: Int?
    
    func showMessage(_ message: MessageModel) {
        didShowMessageCalled = true
        didTextMessage = message.message
        didLettersCount = message.lettersCount
        didWordsCount = message.wordsCount
        didUpperCount = message.upperCount
        didLowerCount = message.lowerCount
    }
    
}
