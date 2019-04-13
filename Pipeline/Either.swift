import Foundation

public enum Either<T, U> {
    case left(T)
    case right(U)
}

public extension Either {
    var left: T? {
        if case .left(let value) = self {
            return value
        } else {
            return nil
        }
    }
    var right: U? {
        if case .right(let value) = self {
            return value
        } else {
            return nil
        }
    }
}
