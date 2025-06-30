# String Calculator (TDD Kata)

A Swift-based iOS String Calculator built using **Test-Driven Development**.

This app was created as part of the Incubyte selection process for the iOS Developer role.

---

##  Features

- Accepts comma `,` and newline `\n` separated numbers
- Supports **custom delimiters** like `//;\n1;2`
- Throws descriptive errors on **negative numbers**
- SwiftUI UI with input, result, and error display
- Fully tested using **XCTest** and pure **TDD**

---

##  Sample Inputs

| Input                  | Output / Error |
|------------------------|----------------|
| `""`                   | `0`            |
| `"1"`                  | `1`            |
| `"1,2,3"`              | `6`            |
| `"1\n2,3"`             | `6`            |
| `"//;\n2;3"`           | `5`            |
| `"1,-2"`               | `negative numbers not allowed: -2` |
| `"//#\n1#2#-3"`        | `negative numbers not allowed: -3` |

---

##  TDD Commit History

This project followed a strict TDD process:
- ✅ Write a failing test
- ✅ Make it pass
- ✅ Refactor
- ✅ Commit each cycle

View the commit history here:  
🔗 [GitHub Repo](https://github.com/mdiostest/StringCalculator)

---

##  Built With

- Swift 5.10
- SwiftUI (iOS 17)
- XCTest
- Xcode 16.4

---

##  Run It Yourself

1. Clone the repo
2. Open `StringCalculatorApp.xcodeproj`
3. Select an iPhone Simulator
4. Hit `Cmd + R` to run the app
5. Hit `Cmd + U` to run the tests

---

##  Submission

Thanks for reviewing!  
Looking forward to hearing from the Incubyte team.
