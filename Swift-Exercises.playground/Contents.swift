import UIKit

// Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func sumOfTwoInt(_ num1: Int, _ num2: Int) -> Int {
    let result = num1 + num2
    if num1 == num2 {
        return result * 3
    }
    return result
}
print(sumOfTwoInt(3, 2))

// Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
func computeAbsoluteDifference(with n: Int) -> Int {
    let number = 51
    let result = abs(n - number)
    if n > number {
        return result * 2
    }
    return result
}
print(computeAbsoluteDifference(with: 111))

// Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func itest(_ num1: Int, _ num2: Int) -> Bool {
    let number = 20
    guard num1 == number || num2 == number || (num1 + num2) == number else { return false }

    return true
}
print(itest(201, 20))

// Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
func hasOppositeSignsOrBothNegative(_ num1: Int, _ num2: Int) -> Bool {
     (num1 < 0 && num2 > 0) || (num1 > 0 && num2 < 0) || (num1 < 0 && num2 < 0)
}
print(hasOppositeSignsOrBothNegative(0, 0))

// Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func prependIsIfNeeded(to statement: String) -> String {
    guard !statement.isEmpty else { return "Is" }

    if statement.lowercased().hasPrefix("is") {
        return statement
    }
    return "Is \(statement)"
}
print(prependIsIfNeeded(to: "Is valid"))
