/// Useful extensions and algorithms for Swift. No dependencies on Foundation or other iOS/macOS frameworks.
public enum Xn {
}

// MARK: XnError

public enum XnError: Error {
    case unexpectedNil
}

// MARK: - Xn.Optionals

public extension Xn {
    /// Returns non-optional `value` if it is not nil.  Throws `XnError.unexpectedNil` if the `value` is nil.
    @inline(__always) static func unwrap<T>(_ value: T?) throws -> T {
        guard let value else { throw XnError.unexpectedNil }
        return value
    }
}

// MARK: - Xn.Debug

public extension Xn {
    /// If the module is built with debug configuration, `debugPrint`s the `value` together with callsite information (file and line) and returns `value`. In release configuration it just returns `value` (and hopefully is optmimized away entirely).
    @inline(__always) static func dbg<T>(_ value: T, file: StaticString = #file, line: Int = #line) -> T {
        #if DEBUG
        debugPrint("\(file):\(line)", value)
        #endif
        return value
    }
}

