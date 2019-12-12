import XCTest
@testable import Pipeline

final class PipelineTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Pipeline().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
