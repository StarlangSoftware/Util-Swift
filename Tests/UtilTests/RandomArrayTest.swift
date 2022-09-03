import XCTest
@testable import Util

final class RandomArrayTest: XCTestCase {
   
    func testNormalizedArray() {
        let array : [Double] = RandomArray.normalizedArray(itemCount: 10)
        var sum : Double = 0.0
        for d in array{
            sum += d
        }
        XCTAssertEqual(1.0, sum)
    }

    func testIndexArray() {
        let array : [Int] = RandomArray.indexArray(itemCount: 10)
        var sum : Int = 0
        for d in array{
            sum += d
        }
        XCTAssertEqual(45, sum)
    }

    static var allTests = [
        ("testExample1", testNormalizedArray),
        ("testExample2", testIndexArray),
    ]
}
