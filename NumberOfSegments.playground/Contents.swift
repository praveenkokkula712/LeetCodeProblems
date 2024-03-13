class Solution {
    func countSegments(_ s: String) -> Int {
        var str = s
        var count = 0
        var found = false
        let strCount = str.count
        for (i,a) in str.enumerated() {
            if a == " " {
                if found {
                    count += 1
                    found = false
                }
            } else {
                found = true
                if i == strCount - 1 {
                    count += 1
                }
            }
        }
        return count
    }
}
