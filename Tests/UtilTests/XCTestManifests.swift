import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PermutationTest.allTests),
        testCase(RandomNormalizedArrayTest.allTests),
    ]
}
#endif
