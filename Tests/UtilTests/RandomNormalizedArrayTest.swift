import XCTest
@testable import Util

final class RandomNormalizedArrayTest: XCTestCase {
    func testGet() {
        let randomNormalizedArray : RandomNormalizedArray = RandomNormalizedArray(itemCount: 10)
        let array : [Double] = randomNormalizedArray.get()
        var sum : Double = 0.0
        for d in array{
            sum += d
        }
        XCTAssertEqual(1.0, sum)
    }

    static var allTests = [
        ("testExample1", testGet),
    ]
}
