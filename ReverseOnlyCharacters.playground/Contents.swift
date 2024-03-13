class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var smallRange = Array(65...90) + Array(97...122)
        var reverse = [Int]()
        var chars = s.compactMap(\.asciiValue)
        for char in chars.reversed() {
            if smallRange.contains(Int(char)) {
                let uniChar = UnicodeScalar(char)
                reverse.append(Int(char))
            }
        }
        let count = s.count
        var pivot = 0
        var result = ""
        for char in s {
            let ascii = char.unicodeScalars.first!.value
            if smallRange.contains(Int(ascii)) {
                let character = UnicodeScalar(reverse[pivot])!
                result.append("\(character)")
                pivot += 1
            } else {
                result.append("\(char)")
            }
        }
        return result
    }
}
