//
//  TelaAViewModelSpy.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 24/05/23.
//

import UIKit
@testable import SampleTest1

final class TelaAViewModelOutputSpy: TelaAViewModelOutput {
    
    private(set) var blankSpace: String = "error"
    private(set) var inputData = ""
    private(set) var checkShowAlert: Bool = false
    private(set) var checkNavigateToScreenB: Bool = false
    
    func showAlert(with message: String) {
        blankSpace = message
        checkShowAlert = true
    }
    
    func navigateToScreenB(with message: String) {
        inputData = message
        checkNavigateToScreenB = true
    }
}
