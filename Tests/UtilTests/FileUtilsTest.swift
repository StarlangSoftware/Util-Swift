import XCTest
@testable import Util

final class FileUtilsTest: XCTestCase {

    func testFile() {
        let list = FileUtils.getLines(fileName: "deneme", fileExtension: "txt")
        XCTAssertNotNil(list)
        XCTAssertEqual(2, list?.count)
    }

    func testItems() {
        let list = FileUtils.getItems(fileName: "deneme", fileExtension: "txt")
        XCTAssertNotNil(list)
        XCTAssertEqual(2, list?.count)
        XCTAssertEqual(2, list?[0].count)
        XCTAssertEqual(3, list?[1].count)
    }

    static var allTests = [
        ("testExample1", testFile),
        ("testExample2", testItems),
    ]
}
