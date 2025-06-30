//
//  StringCalculator.swift
//  StringCalculatorApp
//
//  Created by Mriganka De on 30/06/25.
//

import Foundation

public class StringCalculator {
    public init() {}

    public func add(_ numbers: String) throws -> Int {
        if numbers.isEmpty {
            return 0
        }

        return Int(numbers) ?? 0
    }
}
