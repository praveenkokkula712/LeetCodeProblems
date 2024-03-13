class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var result = 0
        var count = 1
        var num = n
        while num >= count {
            num -= count
            count += 1
            result += 1
        }
        return result
    }
}
