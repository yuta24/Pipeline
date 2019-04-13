//
//  PipelineTests.swift
//  PipelineTests
//
//  Created by Yu Tawata on 2019/04/13.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import XCTest
@testable import Pipeline

class PipelineTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    struct Input: Equatable {
        enum ValidationError: Swift.Error {
            case nameEmpty
            case nameLengthTooLong
            case emailEmpty
        }

        var name: String
        var email: String
    }

    func validateInput(_ input: Input) -> Result<Input, Input.ValidationError> {
        if input.name.isEmpty {
            return .failure(.nameEmpty)
        } else if input.email.isEmpty {
            return .failure(.emailEmpty)
        } else {
            return .success(input)
        }
    }

    func validate1(_ input: Input) -> Result<Input, Input.ValidationError> {
        if input.name.isEmpty {
            return .failure(.nameEmpty)
        } else {
            return .success(input)
        }
    }

    func validate2(_ input: Input) -> Result<Input, Input.ValidationError> {
        if input.name.count > 50 {
            return .failure(.nameLengthTooLong)
        } else {
            return .success(input)
        }
    }

    func validate3(_ input: Input) -> Result<Input, Input.ValidationError> {
        if input.email.isEmpty {
            return .failure(.emailEmpty)
        } else {
            return .success(input)
        }
    }

    func testPipe1() {
        let _validate1 = curry(validate1)
        let _validate2 = curry(bind)(validate2)
        let _validate3 = curry(bind)(validate3)
        let inputValidator = _validate1 >>> _validate2 >>> _validate3

        let result = inputValidator(Input(name: "", email: ""))
        let expectResult = Result<Input, Input.ValidationError>.failure(.nameEmpty)

        XCTAssertNil(result.value)
        XCTAssertEqual(result.error, expectResult.error)
    }

    func testPipe2() {
        let _validate1 = curry(validate1)
        let _validate2 = curry(bind)(validate2)
        let _validate3 = curry(bind)(validate3)
        let inputValidator = _validate1 >>> _validate2 >>> _validate3

        let result = inputValidator(Input(name: "yuta24", email: "yuta24@bivre.com"))
        let expectResult = Result<Input, Input.ValidationError>.success(Input(name: "yuta24", email: "yuta24@bivre.com"))

        XCTAssertEqual(result.value, expectResult.value)
        XCTAssertNil(result.error)
    }
}
