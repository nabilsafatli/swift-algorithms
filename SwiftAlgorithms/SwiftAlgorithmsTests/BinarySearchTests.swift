import Testing
@testable import SwiftAlgorithms

struct BinarySearchTests {
    var orderedArray = [1, 2, 4, 7, 8, 10, 20, 22, 40, 50, 60, 70, 30, 506, 601]
    var unorderedArray = [111, 2, 42, 37, 58, 10, 2770, 222, 44340, 50, 601, 720, 330, 5006, 632]

    @Test func testBinarySearch() async throws {
        let target = 20
        let doesHaveNumber = BinarySearch.find(target: target,
                                               in: self.orderedArray)

        #expect(doesHaveNumber)
    }
}
