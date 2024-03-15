class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        let range = Array(left...right)
        var result = [Int]()
        for i in range {
            if self.isDividingNumber(number: i) {
                result.append(i)
            }
        }
        return result
    }

    private func isDividingNumber(number: Int) -> Bool {
        var num = number
        if number.isMultiple(of: 10) {
            return false
        }
        while num != 1 && num != 0  {
            if num.isMultiple(of: 10) {
                return false
            }
            let digit = num % 10
            if number % digit != 0 || digit == 0 {
                return false
            }
            num = num / 10
        }
        return true
    }
}
