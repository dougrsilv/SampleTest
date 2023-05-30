//
//  TelaBViewModel.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 23/05/23.
//

import Foundation

protocol TelaBViewModelInput {
    var delegate: TelaBViewModelOutput? { get set }

    func start()
}

protocol TelaBViewModelOutput: AnyObject {
    func showMessage(_ message: MessageModel)
}

final class TelaBViewModel: TelaBViewModelInput {

    weak var delegate: TelaBViewModelOutput?

    // MARK: - Properties

    private let message: String

    // MARK: - Initialization

    init(message: String) {
        self.message = message
    }

    // MARK: - Methods

    func start() {
        let lowerMessage = message.lowercased()
        
        let lettersCount = lowerMessage.filter(\.isLetter).count
        let wordsCount = lowerMessage.components(separatedBy: .whitespacesAndNewlines).filter(\.isEmpty.invert).count
        let upperCount = message.filter(\.isUppercase).count
        let lowerCount = message.filter(\.isLowercase).count

        delegate?.showMessage(.init(
            message: message,
            lettersCount: lettersCount,
            wordsCount: wordsCount,
            upperCount: upperCount,
            lowerCount: lowerCount)
        )
    }

}
