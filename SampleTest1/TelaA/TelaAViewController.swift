//
//  ViewController.swift
//  SampleTest1
//
//  Created by Rodrigo Policante Martins on 22/05/23.
//

import UIKit

class TelaAViewController: UIViewController, TelaAViewModelOutput {

    // MARK: - UI Components

    private lazy var contentStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            messageField,
            continueButton
        ])
        stack.axis = .vertical
        stack.spacing = 8
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private lazy var messageField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.placeholder = "Insira sua frase"
        field.backgroundColor = .white
        field.heightAnchor.constraint(equalToConstant: 45).isActive = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()

    private lazy var continueButton: UIButton = {
        let button = UIButton(
            configuration: .borderedTinted(),
            primaryAction: .init(
                title: "Continuar",
                handler: { [unowned self] _ in
                    view.endEditing(true)
                    viewModel.check(message: messageField.text)
                }
            )
        )
        return button
    }()

    // MARK: - Properties

    private var viewModel: TelaAViewModelInput

    // MARK: - Initialization

    init(viewModel: TelaAViewModelInput) {
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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        messageField.becomeFirstResponder()
    }

    private func setupView() {
        view.addSubview(contentStackView)

        NSLayoutConstraint.activate([
            contentStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            contentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
        ])
    }

    // MARK: - Methods

    func showAlert(with message: String) {
        let alert = UIAlertController(
            title: "Ops",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(.init(
            title: "Ok",
            style: .default
        ){ [unowned self] _ in
            messageField.becomeFirstResponder()
        })
        present(alert, animated: true)
    }

    func navigateToScreenB(with message: String) {
        viewModel.navigation(parameter: message)
    }
}

