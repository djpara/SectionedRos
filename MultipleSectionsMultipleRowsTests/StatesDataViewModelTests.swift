//
//  StatesDataViewModelTests.swift
//  StatesDataViewModelTests
//
//  Created by David Para on 6/12/20.
//  Copyright © 2020 David Para. All rights reserved.
//

import XCTest
@testable import MultipleSectionsMultipleRows

class StatesDataViewModelTests: XCTestCase {
    var sut: StatesDataViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = StatesDataViewModel(bundle: Bundle(for: StatesDataViewModel.self))
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func test_TenMostPopulousStates_count_isEqual() {
        let count = 10
        
        XCTAssertEqual(count, sut.tenMostPopulousStates.count)
    }

}
