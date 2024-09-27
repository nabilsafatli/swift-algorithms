//
//  QuickSortTests.swift
//  SwiftAlgorithms
//
//  Created by Nabil Safatli on 2024-09-25.
//
import Testing
@testable import SwiftAlgorithms

struct QuickSort {
    @Test func testQuickSort() {
        var unorderedArray = DataSample.unorderedArray

        Quicksort.sort(array: &unorderedArray)

        #expect(unorderedArray == DataSample.orderedArray)
    }
}
