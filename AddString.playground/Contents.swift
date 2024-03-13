class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
                var num1 = num1
        var num2 = num2
        var res: String = ""
        var carry = 0
        while !num1.isEmpty || !num2.isEmpty {
            let val1 = num1.isEmpty ? 0 : Int(String(num1.removeLast())) ?? 0
            let val2 = num2.isEmpty ? 0 : Int(String(num2.removeLast())) ?? 0
            let sum = carry + val1 + val2
            res = "\(sum % 10)" + res
            carry = sum / 10
        }
        if carry != 0 {
            res = "\(carry)" + res
        }
        return res
    }
}
