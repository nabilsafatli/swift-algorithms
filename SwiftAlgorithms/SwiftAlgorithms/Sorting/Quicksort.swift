struct Quicksort {
    static func sort(array: inout [Int]) {
        quicksort(low: 0, high: array.count - 1, array: &array)
    }

    static func quicksort(low: Int, high: Int, array: inout [Int]) {
        if low < high {
            let j = partition(low: low, high: high, array: &array)
            quicksort(low: low, high: j - 1, array: &array)  // Fix off-by-one here
            quicksort(low: j + 1, high: high, array: &array)
        }
    }

    static func partition(low: Int, high: Int, array: inout [Int]) -> Int {
        let pivot = array[low]
        var i = low + 1  // Start i at low + 1 to avoid checking the pivot itself
        var j = high
        
        while true {
            // Move i to the right, ensuring i stays within bounds
            while i <= j && array[i] <= pivot {
                i += 1
            }
            
            // Move j to the left, ensuring j stays within bounds
            while i <= j && array[j] > pivot {
                j -= 1
            }
            
            if i < j {
                array.swapAt(i, j)  // Swap elements at i and j
            } else {
                break  // Break the loop when i and j cross
            }
        }
        
        // Swap the pivot element (at low) with the element at j
        array.swapAt(low, j)
        
        return j  // j is the final position of the pivot
    }
}
