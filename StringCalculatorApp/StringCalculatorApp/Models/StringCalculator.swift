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
        let delimiters = CharacterSet(charactersIn: ",\n")
        let components = numbers.components(separatedBy: delimiters)
        let intValues = components.compactMap { Int($0) }
        return intValues.reduce(0, +)
    }
}

