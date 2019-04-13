import Foundation

infix operator |>: infixl0

public func |> <A, B>(_ a: A, _ f: @escaping (A) -> B) -> B {
    return f(a)
}

public func |><A, B, C>(_ a: A, _ f: @escaping (A, B) -> C) -> (B) -> C {
    return { b in
        f(a, b)
    }
}

public func |><A, B, C, D>(_ a: A, _ f: @escaping (A, B, C) -> D) -> (B, C) -> D {
    return { b, c in
        f(a, b, c)
    }
}

public func |><A, B, C, D, E>(_ a: A, _ f: @escaping (A, B, C, D) -> E) -> (B, C, D) -> E {
    return { b, c, d in
        f(a, b, c, d)
    }
}

public func |><A, B, C, D, E, F>(_ a: A, _ f: @escaping (A, B, C, D, E) -> F) -> (B, C, D, E) -> F {
    return { b, c, d, e in
        f(a, b, c, d, e)
    }
}

public func |><A, B, C, D, E, F, G>(_ a: A, _ f: @escaping (A, B, C, D, E, F) -> G) -> (B, C, D, E, F) -> G {
    return { b, c, d, e, _f in
        f(a, b, c, d, e, _f)
    }
}

public func |><A, B, C, D, E, F, G, H>(_ a: A, _ f: @escaping (A, B, C, D, E, F, G) -> H) -> (B, C, D, E, F, G) -> H {
    return { b, c, d, e, _f, g in
        f(a, b, c, d, e, _f, g)
    }
}

public func |><A, B, C, D, E, F, G, H, I>(_ a: A, _ f: @escaping (A, B, C, D, E, F, G, H) -> I) -> (B, C, D, E, F, G, H) -> I {
    return { b, c, d, e, _f, g, h in
        f(a, b, c, d, e, _f, g, h)
    }
}

public func |><A, B, C, D, E, F, G, H, I, J>(_ a: A, f: @escaping (A, B, C, D, E, F, G, H, I) -> J) -> (B, C, D, E, F, G, H, I) -> J {
    return { b, c, d, e, _f, g, h, i in
        f(a, b, c, d, e, _f, g, h, i)
    }
}

public func |><A, B, C, D, E, F, G, H, I, J, K>(_ a: A, _ f: @escaping (A, B, C, D, E, F, G, H, I, J) -> K) -> (B, C, D, E, F, G, H, I, J) -> K {
    return { b, c, d, e, _f, g, h, i, j in
        f(a, b, c, d, e, _f, g, h, i, j)
    }
}

public func |><A, B, C, D, E, F, G, H, I, J, K, L>(_ a: A, _ f: @escaping (A, B, C, D, E, F, G, H, I, J, K) -> L) -> (B, C, D, E, F, G, H, I, J, K) -> L {
    return { b, c, d, e, _f, g, h, i, j, k in
        f(a, b, c, d, e, _f, g, h, i, j, k)
    }
}
