import XCTest
@testable import INKKit

final class INKKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(INKPerson().name, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
