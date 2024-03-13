class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        let count = arr.count
        if count < 3 {
            return false
        }
        var pivot = 0
        var first = arr[0]
        for i in 1..<count {
            if first < arr[i] {
                pivot = i
                first = arr[i]
            } else {
                break
            }
        }
        if pivot == count - 1 || pivot == 0 {
            return false
        }
        first = arr[pivot]
        for i in pivot+1..<count {
            if first > arr[i] {
                pivot = i
                first = arr[i]
            } else{
                return false
            }
        }

        return true
    }
}
