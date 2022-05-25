//
//  VectorProtocolDotProduct.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol {
    @inlinable
    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Element
    where V.Element == Element {
        assert(lhs.length == rhs.length, "Vectors of unequal length")
        
        let n = lhs.length

        var result = Element.zero
        for i in 0..<n {
            result += lhs[i] * rhs[i]
        }
        
        return result
    }
}
