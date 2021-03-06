# WTIntExtensions

[![CI Status](http://img.shields.io/travis/wltrup/Swift-WTIntExtensions.svg?style=flat)](https://travis-ci.org/wltrup/Swift-WTIntExtensions)
[![Version](https://img.shields.io/cocoapods/v/WTIntExtensions.svg?style=flat)](http://cocoapods.org/pods/WTIntExtensions)
[![License](https://img.shields.io/cocoapods/l/WTIntExtensions.svg?style=flat)](http://cocoapods.org/pods/WTIntExtensions)
[![Platform](https://img.shields.io/cocoapods/p/WTIntExtensions.svg?style=flat)](http://cocoapods.org/pods/WTIntExtensions)

## IMPORTANT
2019.11.30: This project has been **deprecated** since the Swift Standard Library now has precisely the functionality that this library provides.

## What

**WTIntExtensions** adds methods to generate uniformly-distributed pseudo-random integer values:

```swift
public static func random(_ a: Int, _ b: Int) -> Int
public static func randomNonZero(_ a: Int, _ b: Int) throws -> Int
```

## Why

Because who doesn't keep re-implementing random number generators time and again?

## Tests

**WTIntExtensions** adds 2 extensions, fully tested by 4 tests with 100% coverage.

## Changelog

Changes to **WTIntExtensions** are listed
[here](https://github.com/wltrup/Swift-WTIntExtensions/blob/master/CHANGELOG.md).

## Installation

**WTIntExtensions** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WTIntExtensions"
```

## Author

Wagner Truppel, trupwl@gmail.com

## License

**WTIntExtensions** is available under the MIT license. See the LICENSE file for more info.
