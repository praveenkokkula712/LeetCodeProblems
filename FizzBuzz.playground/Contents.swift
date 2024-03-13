import UIKit
import Foundation

var greeting = "Hello, playground"


class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        let array = ["FizzBuzz", "Fizz", "Buzz"]
        for i in 1...n {
            if (i % 3 == 0) && i % 5 == 0 {
                result.append(array[0])
            } else if i % 3 == 0 {
                result.append(array[1])
            } else if i % 5 == 0 {
                result.append(array[2])
            } else {
                result.append("\(i)")
            }
        }
        return result
    }
}
