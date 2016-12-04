/*
 WTIntExtensions.swift
 WTIntExtensions

 Created by Wagner Truppel on 2016.12.03

 The MIT License (MIT)

 Copyright (c) 2016 Wagner Truppel.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

 When crediting me (Wagner Truppel) for this work, please use one
 of the following two suggested formats:

 Uses "WTIntExtensions" by Wagner Truppel
 https://github.com/wltrup

 or

 WTIntExtensions by Wagner Truppel
 https://github.com/wltrup
 */

import Foundation


public extension Int
{
    /// Returns a uniformly-distributed pseudo-random value in the **closed**
    /// interval [min(a,b), max(a,b)].
    ///
    /// - Parameters:
    ///   - a: any value
    ///   - b: any value
    ///
    /// - Returns: a uniformly-distributed pseudo-random value in the **closed**
    ///            interval [min(a,b), max(a,b)].
    ///
    /// - SeeAlso: `randomNonZero(a:b:)`.
    public static func random(_ a: Int, _ b: Int) -> Int
    {
        let value = Double(arc4random_uniform(UInt32.max)) / Double(UInt32.max - 1)
        return Int(Double(a) + Double(b - a) * value)
    }

    /// Returns a uniformly-distributed pseudo-random **non-zero** value in the
    /// **closed** interval [min(a,b), max(a,b)].
    ///
    /// - Parameters:
    ///   - a: any value
    ///   - b: any value
    ///
    /// - Returns: a uniformly-distributed **non-zero** pseudo-random value in
    ///            the **closed** interval [min(a,b), max(a,b)].
    ///
    /// - SeeAlso: `random(a:b:)`.
    public static func randomNonZero(_ a: Int, _ b: Int) -> Int
    {
        var r: Int = 0
        while r == 0 { r = Int.random(a, b) }
        return r
    }
}

