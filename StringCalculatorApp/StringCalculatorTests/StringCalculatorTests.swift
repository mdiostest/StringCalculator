//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Mriganka De on 30/06/25.
//

import XCTest
@testable import StringCalculatorApp

final class StringCalculatorTests: XCTestCase {
    func test_emptyString_returnsZero() {
        let calculator = StringCalculator()
        let result = try? calculator.add("")
        XCTAssertEqual(result, 0)
    }
}
