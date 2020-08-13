import XCTest
@testable import Util

final class SubsetTest: XCTestCase {
    func testNext1() {
        let subSet : Subset = Subset(rangeStart: 1, rangeEnd: 10, elementCount: 5)
        let firstSubSet : [Int] = subSet.get()
        XCTAssertEqual([1, 2, 3, 4, 5], firstSubSet)
        var count : Int = 1
        while subSet.next(){
            count = count + 1
        }
        XCTAssertEqual(252, count)
    }

    func testNext2() {
        let subSet : Subset = Subset(rangeStart: 1, rangeEnd: 20, elementCount: 3)
        let firstSubSet : [Int] = subSet.get()
        XCTAssertEqual([1, 2, 3], firstSubSet)
        var count : Int = 1
        while subSet.next(){
            count = count + 1
        }
        XCTAssertEqual(1140, count)
    }

    func testNext3() {
        var count : Int = 0
        for i in 0..<11{
            let subSet : Subset = Subset(rangeStart: 1, rangeEnd: 10, elementCount: i)
            count = count + 1
            while subSet.next(){
                count = count + 1
            }
        }
        XCTAssertEqual(1024, count)
    }

    static var allTests = [
        ("testExample1", testNext1),
        ("testExample2", testNext2),
        ("testExample3", testNext3),
    ]
}
