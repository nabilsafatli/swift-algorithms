struct BubbleSort {
    static func sort(array: inout [Int]) {
        var didSort = false
        for i in 0..<(array.count - 1) {
            if array[i] > array[i + 1] {
                didSort = true
                let temp = array[i + 1]
                array[i + 1] = array[i]
                array[i] = temp
            }
        }

        if didSort {
            sort(array: &array)
        }
    }
}
