import Foundation

public func curry<A, B>(_ f: @escaping (A) -> B) -> (A) -> B {
    return { a in f(a) }
}

public func curry<A, B, C>(_ f: @escaping (A, B) -> C) -> (A) -> (B) -> C {
    return { a in { b in f(a, b) } }
}

public func curry<A, B, C, D>(_ f: @escaping (A, B, C) -> D) -> (A) -> (B) -> (C) -> D {
    return { a in { b in { c in f(a, b, c) } } }
}

public func curry<A, B, C, D, E>(_ f: @escaping (A, B, C, D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
    return { a in { b in { c in { d in f(a, b, c, d) } } } }
}

public func curry<A, B, C, D, E, F>(_ f: @escaping (A, B, C, D, E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
    return { a in { b in { c in { d in { e in f(a, b, c, d, e) } } } } }
}

public func curry<A, B, C, D, E, F, G>(_ f: @escaping (A, B, C, D, E, F) -> G) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G {
    return { a in { b in { c in { d in { e in { _f in f(a, b, c, d, e, _f) }  } } } } }
}

public func curry<A, B, C, D, E, F, G, H>(_ f: @escaping (A, B, C, D, E, F, G) -> H) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H {
    return { a in { b in { c in { d in { e in { _f in { g in f(a, b, c, d, e, _f, g) } }  } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I>(_ f: @escaping (A, B, C, D, E, F, G, H) -> I) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I {
    return { a in { b in { c in { d in { e in { _f in { g in { h in f(a, b, c, d, e, _f, g, h) } } }  } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I, J>(_ f: @escaping (A, B, C, D, E, F, G, H, I) -> J) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J {
    return { a in { b in { c in { d in { e in { _f in { g in { h in { i in f(a, b, c, d, e, _f, g, h, i) } } } }  } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I, J, K>(_ f: @escaping (A, B, C, D, E, F, G, H, I, J) -> K) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K {
    return { a in { b in { c in { d in { e in { _f in { g in { h in { i in { j in f(a, b, c, d, e, _f, g, h, i, j) } } } } }  } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I, J, K, L>(_ f: @escaping (A, B, C, D, E, F, G, H, I, J, K) -> L) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L {
    return { a in { b in { c in { d in { e in { _f in { g in { h in { i in { j in { k in f(a, b, c, d, e, _f, g, h, i, j, k) } } } } } }  } } } } }
}

public func uncurry<A, B>(_ f: @escaping (A) -> B) -> (A)-> B {
    return { a in f(a) }
}

public func uncurry<A, B, C>(_ f: @escaping (A) -> (B) -> C) -> (A, B) -> C {
    return { (a, b) in f(a)(b) }
}

public func uncurry<A, B, C, D>(_ f: @escaping (A) -> (B) -> (C) -> D) -> (A, B, C) -> D {
    return { (a, b, c) in f(a)(b)(c) }
}

public func uncurry<A, B, C, D, E>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> E) -> (A, B, C, D) -> E {
    return { (a, b, c, d) in f(a)(b)(c)(d) }
}

public func uncurry<A, B, C, D, E, F>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> F) -> (A, B, C, D, E) -> F {
    return { (a, b, c, d, e) in f(a)(b)(c)(d)(e) }
}

public func uncurry<A, B, C, D, E, F, G>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G) -> (A, B, C, D, E, F) -> G {
    return { (a, b, c, d, e, _f) in f(a)(b)(c)(d)(e)(_f) }
}

public func uncurry<A, B, C, D, E, F, G, H>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H) -> (A, B, C, D, E, F, G) -> H {
    return { (a, b, c, d, e, _f, g) in f(a)(b)(c)(d)(e)(_f)(g) }
}

public func uncurry<A, B, C, D, E, F, G, H, I>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I) -> (A, B, C, D, E, F, G, H) -> I {
    return { (a, b, c, d, e, _f, g, h) in f(a)(b)(c)(d)(e)(_f)(g)(h) }
}

public func uncurry<A, B, C, D, E, F, G, H, I, J>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J) -> (A, B, C, D, E, F, G, H, I) -> J {
    return { (a, b, c, d, e, _f, g, h, i) in f(a)(b)(c)(d)(e)(_f)(g)(h)(i) }
}

public func uncurry<A, B, C, D, E, F, G, H, I, J, K>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K) -> (A, B, C, D, E, F, G, H, I, J) -> K {
    return { (a, b, c, d, e, _f, g, h, i, j) in f(a)(b)(c)(d)(e)(_f)(g)(h)(i)(j) }
}

public func uncurry<A, B, C, D, E, F, G, H, I, J, K, L>(_ f: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L) -> (A, B, C, D, E, F, G, H, I, J, K) -> L {
    return { (a, b, c, d, e, _f, g, h, i, j, k) in f(a)(b)(c)(d)(e)(_f)(g)(h)(i)(j)(k) }
}
