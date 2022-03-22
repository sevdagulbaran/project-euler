//: [Previous](@previous)

import Foundation

/**
 2. Even Fibonacci numbers
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 */

func fibonacci() -> Int {
    
    // The first two value assignments for Fibonacci:
    var number1 = 0, number2 = 1
    
    // The sum of the double values requested in the question:
    var sumNumber: Int = 0
    
    // For the Fibonacci series up to 4000000:
    while number2 < 4000000 {
        let temp = number1 + number2
        number1 = number2
        number2 = temp
        
        // To sum the evens in the series into the sum variable:
        if number2 % 2 == 0 {
            sumNumber += number2
        }
    }
    return sumNumber
}

// Print the result:
print(fibonacci()) // 4613732
