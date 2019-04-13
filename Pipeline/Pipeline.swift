
infix operator >>>: infixl9

public func >>> <A, B, C>(_ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> (A) -> C {
    return {
        return g(f($0))
    }
}

public func bind<A, B, C>(_ f: (A) -> Result<B, C>, _ t: Result<A, C>) -> Result<B, C> where C: Swift.Error {
    switch t {
    case .success(let value):
        return f(value)
    case .failure(let error):
        return .failure(error)
    }
}
