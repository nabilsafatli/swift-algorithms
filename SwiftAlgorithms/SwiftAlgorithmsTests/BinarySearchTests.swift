import Testing
@testable import SwiftAlgorithms

struct BinarySearchTests {
    @Test func testBinarySearch() async throws {
        let target = 20
        let doesHaveNumber = BinarySearch.find(target: target,
                                               in: DataSample.orderedArray)

        #expect(doesHaveNumber)
    }
}
