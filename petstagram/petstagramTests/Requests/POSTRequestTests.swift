//
//  POSTRequestTests.swift
//  petstagramTests
//
//  Created by Jess Lê on 12/22/22.
//

import XCTest
@testable import petstagram

class POSTRequestTests: XCTestCase {
    func test_handle_data_returns_decodedPost() {
        let data = JsonData.validResponse.data(using: .utf8)!
        let expected = PostData.posts

        let request = POSTRequest(method: .POST, path: "")
        var actual = [Post]()

        do {
            actual = try request.handle(response: data)
        } catch let error {
            XCTFail(error.localizedDescription)
        }

        XCTAssertEqual(actual, expected)
    }
}
