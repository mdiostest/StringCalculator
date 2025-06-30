//
//  StringCalculator.swift
//  StringCalculatorApp
//
//  Created by Mriganka De on 30/06/25.
//

import Foundation

enum StringCalculatorError: LocalizedError {
    case negativeNumbersNotAllowed([Int])
    
    var errorDescription: String? {
        switch self {
        case .negativeNumbersNotAllowed(let negatives):
            return "negative numbers not allowed: \(negatives.map(String.init).joined(separator: ","))"
        }
    }
}



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

        let negatives = intValues.filter { $0 < 0 }
        if !negatives.isEmpty {
            throw StringCalculatorError.negativeNumbersNotAllowed(negatives)
        }        
        return intValues.reduce(0, +)
    }
}


