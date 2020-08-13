import XCTest
@testable import Util

final class PermutationTest: XCTestCase {
    func testNext1() {
        let permutation : Permutation = Permutation(n: 3)
        let firstPermutation : [Int] = permutation.get()
        XCTAssertEqual([0, 1, 2], firstPermutation)
        var count : Int = 1
        while permutation.next(){
            count = count + 1
        }
        XCTAssertEqual(6, count)
    }

    func testNext2() {
        let permutation : Permutation = Permutation(n: 5)
        let firstPermutation : [Int] = permutation.get()
        XCTAssertEqual([0, 1, 2, 3, 4], firstPermutation)
        var count : Int = 1
        while permutation.next(){
            count = count + 1
        }
        XCTAssertEqual(120, count)
    }

    static var allTests = [
        ("testExample1", testNext1),
        ("testExample2", testNext2),
    ]
}
