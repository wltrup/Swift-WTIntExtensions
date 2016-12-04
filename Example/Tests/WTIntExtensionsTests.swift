//
//  WTIntExtensionsTests.swift
//  WTIntExtensions
//
//  Created by Wagner Truppel on 2016.12.03.
//
//  Copyright (c) 2016 Wagner Truppel. All rights reserved.
//

import XCTest
import Foundation
import WTIntExtensions

class WTIntExtensionsTests: XCTestCase
{
    let N = 10_000
    let min = -100
    let max =  100

    func test_randomGeneratesValuesInTheExpectedRange()
    {
        (1...N).forEach { _ in
            let r = Int.random(min, max)
            XCTAssertTrue(r >= min && r <= max)
        }
    }

    func test_randomNonZeroGeneratesValuesInTheExpectedRange()
    {
        (1...N).forEach { _ in
            let r = Int.randomNonZero(min, max)
            XCTAssertTrue(r >= min && r <= max)
        }
    }

    func test_randomNonZeroGeneratesNonZeroValues()
    {
        (1...N).forEach { _ in
            let r = Int.randomNonZero(min, max)
            XCTAssertTrue(r != 0)
        }
    }
}

