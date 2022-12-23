//
//  POSTRequestTests.swift
//  petstagramTests
//
//  Created by Jess Lê on 12/22/22.
//

import XCTest
@testable import petstagram

class POSTRequestTests: XCTestCase {
    func test_handle_validData_returns_decodedPost() {
        let data = JsonData.validResponse.data(using: .utf8)!

        let request = POSTRequest(method: .POST, path: "")
        var actual = [Post]()

        do {
            actual = try request.handle(response: data)
        } catch let error {
            XCTFail(error.localizedDescription)
        }

        XCTAssertEqual(actual, PostData.posts)
    }

    func test_handle_invalidData_throwsError() {
        let data = JsonData.invalidResponse.data(using: .utf8)!

        let request = POSTRequest(method: .POST, path: "")
        var actual = [Post]()

        do {
            actual = try request.handle(response: data)
        } catch let error {
            XCTAssertEqual(error.localizedDescription, "The data couldn’t be read because it isn’t in the correct format.")
        }

        XCTAssertEqual(actual, [])
    }
}
