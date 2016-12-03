//
//  WTBoolExtensionsTests.swift
//  WTBoolExtensions
//
//  Created by Wagner Truppel on 2016.12.03.
//
//  Copyright (c) 2016 Wagner Truppel. All rights reserved.
//

import XCTest
import Foundation
import WTBoolExtensions

class WTBoolExtensionsTests: XCTestCase
{
    /// Tests that uniform pseudo-random boolean values satisfy the
    /// properties of a uniform continuous distribution, namely,
    /// that approximately half of the generated booleans are `true`.
    func test_random()
    {
        let N = 100_000
        let tolerance = Double(1e-2)

        let countOfTrueValues = (1...N)
            .map { _ in Bool.random }
            .filter { $0 }
            .count

        let expected = Double(0.5)
        let resulted = Double(countOfTrueValues) / Double(N)

        XCTAssertTrue(abs(resulted - expected) <= tolerance)
    }
}

