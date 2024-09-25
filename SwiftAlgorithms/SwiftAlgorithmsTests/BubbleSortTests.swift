//
//  BubbleSortTests.swift
//  SwiftAlgorithms
//
//  Created by Nabil Safatli on 2024-09-25.
//

import Testing
@testable import SwiftAlgorithms

struct BubbleSortTests {

    @Test func testBubbleSort() {
        var unorderedArray = DataSample.unorderedArray

        BubbleSort.sort(array: &unorderedArray)

        #expect(unorderedArray == DataSample.orderedArray)
    }
}
