import XCTest
import OSLog
import Foundation
@testable import ColouredApp

let logger: Logger = Logger(subsystem: "ColouredApp", category: "Tests")

@available(macOS 13, *)
final class ColouredAppTests: XCTestCase {
    func testColouredApp() throws {
        logger.log("running testColouredApp")
        XCTAssertEqual(1 + 2, 3, "basic test")
        
        // load the TestData.json file from the Resources folder and decode it into a struct
        let resourceURL: URL = try XCTUnwrap(Bundle.module.url(forResource: "TestData", withExtension: "json"))
        let testData = try JSONDecoder().decode(TestData.self, from: Data(contentsOf: resourceURL))
        XCTAssertEqual("ColouredApp", testData.testModuleName)
    }
}

struct TestData : Codable, Hashable {
    var testModuleName: String
}