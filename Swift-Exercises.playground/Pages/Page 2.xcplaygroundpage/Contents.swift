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

// MARK: - 20. Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a"
func checkIfFirstInstanceOfAIsImmediatelyFollowedByAnotherA(with input: String) -> Bool {
    guard !input.isEmpty else { return false}
    
    let firstIndexOfA = input.startIndex
    let secondIndexOfA = input.index(after: firstIndexOfA)
    
    if input[firstIndexOfA] == "a" && input[secondIndexOfA] == "a" { return true
    }
    
    return false
}
print(checkIfFirstInstanceOfAIsImmediatelyFollowedByAnotherA(with: "aawaaqw"))
