//
//  VectorProtocolDotProduct.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol
where Element: AlgebraicField {
    @inlinable
    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Element
    where V.Element == Element {
        assert(lhs.length == rhs.length, "Vectors of unequal length")
        
        var result = Element.zero
        for i in 0..<lhs.length {
            result += lhs[i] * rhs[i]
        }
        
        return result
    }
}
