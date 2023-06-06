//
//  TelaAViewModelSpy.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 24/05/23.
//

import UIKit
@testable import SampleTest1

final class TelaAViewModelOutputSpy: TelaAViewModelOutput {
    
    private(set) var checkMessageShowAlert: String?
    private(set) var checkMessageNavigateToScreenB: String?
    private(set) var checkShowAlert: Bool = false
    private(set) var checkNavigateToScreenB: Bool = false
    
    func showAlert(with message: String) {
        checkMessageShowAlert = message
        checkShowAlert = true
    }
    
    func navigateToScreenB(with message: String) {
        checkMessageNavigateToScreenB = message
        checkNavigateToScreenB = true
    }
}
