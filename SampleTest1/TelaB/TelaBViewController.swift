//
//  TelaBViewController.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 23/05/23.
//

import UIKit

final class TelaBViewController: UIViewController, TelaBViewModelOutput {

    // MARK: - UI Components

    private lazy var messageTextView: UITextView = {
        let label = UITextView()
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 22)
        label.showsVerticalScrollIndicator = false
        label.showsHorizontalScrollIndicator = false
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isEditable = false
        label.isSelectable = false
        return label
    }()

    // MARK: - Properties

    private var viewModel: TelaBViewModelInput

    // MARK: - Initialization

    init(viewModel: TelaBViewModelInput) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - Layout Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel.start()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Resultadod"
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    private func setupView(){
        view.addSubview(messageTextView)
        NSLayoutConstraint.activate([
            messageTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            messageTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            messageTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            messageTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
        ])
    }

    // MARK: - Methods

    func showMessage(_ message: MessageModel) {
        var fullMessage = "A frase é: <br><strong>\(message.message)</strong><br><br>"

        fullMessage += "Quantidade de letras: \(message.lettersCount)<br>"
        fullMessage += "Quantidade de palavras: \(message.wordsCount)<br>"
        fullMessage += "Quantidade de maiusculas: \(message.upperCount)<br>"
        fullMessage += "Quantidade de minusculas: \(message.lowerCount)<br>"

        guard let html = fullMessage.htmlAttributed(size: 16) else {
            return
        }

        messageTextView.attributedText = html
    }
}
