struct BinarySearch {
    static func find(target: Int, in array: [Int]) -> Bool {
        let midIndex = array.count/2
        let mid = array[midIndex]

        if mid == target { return true }

        if target > mid {
            return find(target: target, in: Array(array[midIndex...]))
        } else {
            return find(target: target, in: Array(array[...midIndex]))
        }
    }
}
