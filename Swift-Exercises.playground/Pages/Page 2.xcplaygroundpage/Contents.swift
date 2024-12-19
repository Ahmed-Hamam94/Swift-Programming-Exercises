//: [Previous](@previous)

import Foundation
//: [Next](@next)

// MARK: - 19. Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.
func convertLastThreeCharacterToUppercase(_ input: String) -> String {
    guard input.count > 3 else {
        return input.lowercased()
    }
    
    let endIndex = input.index(input.endIndex, offsetBy: -3)
    let startPart = input[..<endIndex]
    let endPart = input[endIndex...].uppercased()
    return String(startPart) + endPart
}
print(convertLastThreeCharacterToUppercase("Hello"))
