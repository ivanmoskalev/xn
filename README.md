# xn
[![Swift](https://img.shields.io/badge/swift-5.0-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Useful functions for Swift and Apple Platform SDKs. Basically a jumble of reusable code.

As of now, this has not been stabilized yet, however it is in use in some projects that are live on the App Store. Regardless, use at your own risk!

## Available Functions

### Optionals
Unwrap an optional value or throw an error:

```swift
let value: Int? = 42
let nonOptional = try Xn.unwrap(value) // nonOptional is of type Int
```

### Debug
Print value of the variable with callsite information and return it:

```swift
let result = Xn.dbg(42) // Prints "MyModule/MyFile.swift:23 42" in debug builds
```
