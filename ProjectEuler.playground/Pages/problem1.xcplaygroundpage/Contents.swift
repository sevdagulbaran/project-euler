//: [Previous](@previous)

import Foundation

/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
 The sum of these multiples is 23.Find the sum of all the multiples of 3 or 5 below 1000.
 */

//solution 1
let num = 1000
var sum = 0
for i in 0..<num {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
}
print(sum)

//solution 2
 func sumOfMultiples(with multiple1: Int, with multiple2: Int, below: Int) -> Int{
    var sum = 0
    for i in 1..<below {
        if i % multiple1 == 0 || i % multiple2 == 0 {
            sum += i
        }
    }
    return sum
}

print(sumOfMultiples(with: 3, with: 5, below: 1000))


