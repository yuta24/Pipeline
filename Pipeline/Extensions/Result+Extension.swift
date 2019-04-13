import Foundation

public extension Result where Failure == Swift.Error {
    init(_ f: () throws -> Success) {
        do {
            self = .success(try f())
        } catch {
            self = .failure(error)
        }
    }
}

public extension Result {
    var value: Success? {
        if case .success(let value) = self {
            return value
        } else {
            return nil
        }
    }

    var error: Failure? {
        if case .failure(let error) = self {
            return error
        } else {
            return nil
        }
    }
}
