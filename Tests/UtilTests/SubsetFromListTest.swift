import XCTest
@testable import Util

final class SubsetFromListTest: XCTestCase {
    func testNext1() {
        let subSet : SubsetFromList = SubsetFromList(_list: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100], elementCount: 5)
        let firstSubSet : [Int] = subSet.get()
        XCTAssertEqual([10, 20, 30, 40, 50], firstSubSet)
        var count : Int = 1
        while subSet.next(){
            count = count + 1
        }
        XCTAssertEqual(252, count)
    }

    func testNext2() {
        let subSet : SubsetFromList = SubsetFromList(_list: [9, 8, 2, 12, 7, 16, 17], elementCount: 3)
        let firstSubSet : [Int] = subSet.get()
        XCTAssertEqual([9, 8, 2], firstSubSet)
        var count : Int = 1
        while subSet.next(){
            count = count + 1
        }
        XCTAssertEqual(35, count)
    }

    func testNext3() {
        var count : Int = 0
        for i in 0..<10{
            let subSet : SubsetFromList = SubsetFromList(_list: [9, 8, 2, 12, 7, 16, 17, 8, 3], elementCount: i)
            count = count + 1
            while subSet.next(){
                count = count + 1
            }
        }
        XCTAssertEqual(512, count)
    }

    static var allTests = [
        ("testExample1", testNext1),
        ("testExample2", testNext2),
        ("testExample3", testNext3),
    ]
}
