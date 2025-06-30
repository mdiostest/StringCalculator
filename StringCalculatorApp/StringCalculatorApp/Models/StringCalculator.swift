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

        var delimiterSet = CharacterSet(charactersIn: ",\n")
        var numbersPart = numbers

        // Check for custom delimiter
        if numbers.hasPrefix("//") {
            let components = numbers.components(separatedBy: "\n")
            if components.count > 1 {
                let delimiterLine = components[0]
                numbersPart = components.dropFirst().joined(separator: "\n")

                if let customDelimiter = delimiterLine.dropFirst(2).first {
                    delimiterSet.insert(charactersIn: String(customDelimiter))
                }
            }
        }

        let tokens = numbersPart.components(separatedBy: delimiterSet)
        let intValues = tokens.compactMap { Int($0) }
        return intValues.reduce(0, +)
    }
}


