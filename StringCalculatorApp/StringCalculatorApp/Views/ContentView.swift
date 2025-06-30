//
//  ContentView.swift
//  StringCalculatorApp
//
//  Created by Mriganka De on 30/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var result: String = ""
    
    let calculator = StringCalculator()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("🧮 String Calculator")
                    .font(.title)
                    .bold()
                
                TextField("Enter numbers string", text: $input)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                Button("Calculate") {
                    calculate()
                }
                .buttonStyle(.borderedProminent)

                Text(result)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()

                Spacer()
            }
            .padding()
            .navigationTitle("String Calculator")
        }
    }

    func calculate() {
        let interpreted = input
            .replacingOccurrences(of: "\\n", with: "\n")

        do {
            let sum = try calculator.add(interpreted)
            result = "Result: \(sum)"
        } catch {
            result = error.localizedDescription
        }
    }
}


#Preview {
    ContentView()
}
