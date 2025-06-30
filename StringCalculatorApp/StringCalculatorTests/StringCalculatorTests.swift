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

    func test_singleNumber_returnsThatNumber() {
        let calculator = StringCalculator()
        let result = try? calculator.add("1")
        XCTAssertEqual(result, 1)
    }
    
    func test_twoNumbers_returnsTheirSum() {
        let calculator = StringCalculator()
        let result = try? calculator.add("1,2")
        XCTAssertEqual(result, 3)
    }
    
    func test_multipleNumbers_returnsTheirSum() {
        let calculator = StringCalculator()
        let result = try? calculator.add("1,2,3,4")
        XCTAssertEqual(result, 10)
    }
    
    func test_newlineAsDelimiter_isHandledCorrectly() {
        let calculator = StringCalculator()
        let result = try? calculator.add("1\n2,3")
        XCTAssertEqual(result, 6)
    }
}

