//
//  TelaBViewModelInputSpy.swift
//  SampleTest1Tests
//
//  Created by Douglas  Rodrigues  on 06/06/23.
//

import XCTest
@testable import SampleTest1

final class TelaBViewModelInputSpy: TelaBViewModelInput {
    
    var delegate: TelaBViewModelOutput?
    private(set) var checkMethodsViewDidLoad: Bool = false
    
    func start() {
        checkMethodsViewDidLoad = true
    }
    
}
