import UIKit

//The prime factors of 13195 are 5, 7, 13 and 29.
//
//What is the largest prime factor of the number 600851475143 ?
//Highest prime factor number is 6857 for the number 600851475143.

// Project Euler # 3

var primeFactors = [Int]()

func findFactors(a: Int) -> Bool {
    for i in 2..<a {
        if a % i == 0 {
            return false
        }
    }
    return true
}

func primeFactors(n: Int) -> [Int] {
    for divisor in 2..<n {
        if n % divisor == 0 {
            let bool = findFactors(a: divisor)
            if bool {
                primeFactors.append(divisor)
            }
        }
    }
    return primeFactors
}

print(primeFactors(n: 13195))







