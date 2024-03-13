import UIKit
import Foundation

var greeting = "Hello, playground"


class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            let sorted = nums.sorted(by: <)
            return sorted.last!
        }
        let sortedArray = nums.sorted(by: >)
        var uniqueArray = [Int]()
        var uniqueSet = Set<Int>()
        for num in sortedArray {
            if !uniqueSet.contains(num) {
                uniqueArray.append(num)
                uniqueSet.insert(num)
            }
        }
        if uniqueArray.count >= 3 {
            return uniqueArray[2]
        }
        
        let max = uniqueArray.sorted(by: <).last
        return max ?? 0
    }
}
