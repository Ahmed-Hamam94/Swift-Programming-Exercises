import UIKit

// MARK: - Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func sumOfTwoInt(_ num1: Int, _ num2: Int) -> Int {
    let result = num1 + num2
    if num1 == num2 {
        return result * 3
    }
    return result
}
print(sumOfTwoInt(3, 2))

// MARK: - Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
func computeAbsoluteDifference(with n: Int) -> Int {
    let number = 51
    let result = abs(n - number)
    if n > number {
        return result * 2
    }
    return result
}
print(computeAbsoluteDifference(with: 111))

// MARK: - Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func itest(_ num1: Int, _ num2: Int) -> Bool {
    let number = 20
    guard num1 == number || num2 == number || (num1 + num2) == number else { return false }

    return true
}
print(itest(201, 20))

// MARK: - Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
func hasOppositeSignsOrBothNegative(_ num1: Int, _ num2: Int) -> Bool {
     (num1 < 0 && num2 > 0) || (num1 > 0 && num2 < 0) || (num1 < 0 && num2 < 0)
}
print(hasOppositeSignsOrBothNegative(0, 0))

// MARK: - Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func prependIsIfNeeded(to statement: String) -> String {
    guard !statement.isEmpty else { return "Is" }

    if statement.lowercased().hasPrefix("is") {
        return statement
    }
    return "Is \(statement)"
}
print(prependIsIfNeeded(to: "Is valid"))

// MARK: - Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
func removeCharacter(from text : String, at index: Int) -> String {
    /// All the functions have the same time complexity, 𝑂(𝑛), because each needs to traverse the string or array at least once. However:
    /// Function 1: Converting to an array is generally slower due to the additional memory allocation for the array.
    /// Function 2 & 3: Avoid array conversions but rely on string appending, which might have some overhead due to reallocations.
    /// Function 4: Directly works on the string without converting it to an array, making it the most memory-efficient approach while maintaining simplicity.

    guard !text.isEmpty else { return "Empty String" }
    guard index >= 0 && index < text.count else {
        return "Index out of range"
    }

    // MARK: - 1
    var characters = Array(text)
    print(characters)
    characters.remove(at: index)
    return String(characters)

    // MARK: - 2
    /*
     var result = ""
     for (i, char) in text.enumerated() {
     if i != index {
     result.append(char)
     }
     }
     return result
     */

    // MARK: - 3
    /*
     var result = ""
     var currentIndex = 0

     for char in text {
     if currentIndex != index {
     result.append(char)
     }
     currentIndex += 1
     }
     return result
     */

    // MARK: - 4
    /*
     let count = text.count
     var newWord = text
     let index = text.index(text.startIndex, offsetBy: index)
     if  count > 0
     {
     newWord.remove(at: index)
     }
     return newWord
     */
}
print(removeCharacter(from: "testt", at: 3))

// MARK: - Write a Swift program to change the first and last character of a given string.
func changeFirstLastCharacter(of input: String) -> String {
      guard input.count > 1 else {
          return input
      }
    
      var characters = Array(input)
      let firstCharacter = characters.first!
      let lastCharacter = characters.last!
      
      // Swap the first and last characters
      characters[0] = lastCharacter
      characters[characters.count - 1] = firstCharacter
      
      return String(characters)
}
print(changeFirstLastCharacter(of: "Swift"))

// MARK: - 8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
func addLastCharacterAtFrontAndBack(of input: String) -> String {
    guard input.count > 1 else { return input }
    
//    var characters = Array(input)
//    let lastCharacter = input.last!
//    
//    characters.insert(lastCharacter, at: 0)
//    characters.insert(lastCharacter, at: characters.count - 1)
//    
//    return String(characters)

    guard let lastCharacter = input.last else { return input }
    let lastStr = String(lastCharacter)
    return lastStr + input + lastStr
}
print(addLastCharacterAtFrontAndBack(of: "Swift"))

// MARK: - 9. Write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
func isMultipleOfThreeOrFive(_ number: Int) -> Bool {
    guard number > 0 else { return false }
    
    if number % 3 == 0 || number % 5 == 0 {
        return true
    }
    
    return false
}
print(isMultipleOfThreeOrFive(20))

// MARK: - 10. Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.
func addFirstTwoCharactersAtFrontAndBack(of input: String) -> String {
    guard input.count > 2 else { return input }
    
    var characters = Array(input)
    let firstTwoCharactersArray = characters.prefix(2)
    let firstTwoCharacters = String(firstTwoCharactersArray)
    
    return firstTwoCharacters + input + firstTwoCharacters
}
print(addFirstTwoCharactersAtFrontAndBack(of: "Swift"))

// MARK: - 11. Write a Swift program to test a given string whether it starts with "Is". Return true or false.
func startsWithIs(_ input: String) -> Bool {
    guard input.count >= 2 else { return false }
    let word = input.lowercased()
    
    return word.hasPrefix("is")
}
print(startsWithIs("Is Swift"))

// MARK: - 12. Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
func isInRange(_ number: Int, with range: ClosedRange<Int>) -> Bool {
    return range ~= number
}
print(isInRange(150, with: 10...30))

// MARK: - 13. Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number.
func beginWithFix(_ input: String) -> Bool {
    guard input.count > 2 else { return false }
    let index = input.index(after: input.startIndex)

    return input[index...].hasPrefix("ix")
}
print(beginWithFix("fixi"))

// MARK: - 14. Write a Swift program to find the largest number among three given integers.
func findMaxNumber(_ numbers: [Int]) -> Int {
     return numbers.max() ?? 0
}
print(findMaxNumber([10, 30, 9]))

// MARK: - 15. Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
func findNearestNumberToTen(_ number1: Int, _ number2: Int) -> Int {
    let givenNumber = 10
    let distance1 = abs(number1 - givenNumber)
    let distance2 = abs(number2 - givenNumber)
    
    guard distance1 != distance2 else { return 0 }
    
    return distance1 > distance2 ? number2 : number1
}
print(findNearestNumberToTen(8, 13))

// MARK: - 16. Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
func isInRange(_ number1: Int, _ number2: Int) -> Bool {
    let firstRange = (20...30)
    let secondRange = (30...40)
    
    let isInFirstRange = firstRange.contains(number1) && firstRange.contains(number2)
    let isInSecondRange = secondRange.contains(number1) && secondRange.contains(number2)

    return isInFirstRange || isInSecondRange
 }
print(isInRange(20, 48))
