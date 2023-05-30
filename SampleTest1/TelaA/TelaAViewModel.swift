//
//  ViewModel.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 22/05/23.
//

import Foundation

protocol TelaAViewModelInput {
    var delegate: TelaAViewModelOutput? { get set }

    func check(message: String?)
}

protocol TelaAViewModelOutput: AnyObject {
    func showAlert(with message: String)
    func navigateToScreenB(with message: String)
}

final class TelaAViewModel: TelaAViewModelInput {

    weak var delegate: TelaAViewModelOutput?

    // MARK: - Methods

    func check(message: String?) {
        guard let message, !message.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            delegate?.showAlert(with: "Preencha a mensagem para continuar")
            return
        }

        delegate?.navigateToScreenB(with: message)
    }

}
