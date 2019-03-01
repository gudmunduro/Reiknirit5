import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Reiknirit5Tests.allTests),
    ]
}
#endif