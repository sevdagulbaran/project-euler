//: [Previous](@previous)

import Foundation
/*
 3. Largest prime factor
 The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 */


func findLargestPrimeFactor(number: Int)->Int{
    
    var num = number
    
    // Array into which prime factors will be added:
    var nums: [Int] = []
    
    let maxNum = sqrt(Double(num))
    
    // Loop to find prime factors:
    for i in 2...Int(maxNum) {
        if num % i == 0 {
            num /= i
            nums.append(i)
        }
    }
    // max prime factor:
        return nums.max() ?? 0
}
print(findLargestPrimeFactor(number: 13195))// output: 29
print(findLargestPrimeFactor(number: 600851475143)) // output: 6857
