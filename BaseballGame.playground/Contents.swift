class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var result = [Int]()
        for operation in operations {
            let count = result.count
            if operation == "+" {
                let number1 = result[count - 1]
                let number2 = result[count - 2]
                let sum = (Int(number1) ?? 0) + (Int(number2) ?? 0)
                result.append(sum)
            } else if operation == "D" {
                let number = Int(result[count - 1])
                result.append(number * 2)
            } else if operation == "C" {
                    result.removeLast()
            } else {
                if let number = Int(operation) {
                    result.append(number) // 5,2,
                }
            }
        }
        return result.reduce(0,+)
    }
}
