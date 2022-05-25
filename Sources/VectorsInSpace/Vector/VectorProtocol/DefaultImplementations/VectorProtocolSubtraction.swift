//
//  VectorProtocolSubtraction.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol {
    @inlinable
    static func -<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Vector<Element> where V.Element == Element {
        assert(lhs.length == rhs.length, "Vectors of unequal length")

        let result = zip(lhs, rhs)  // Make zipped (r, l) tuples
            .map { $0 - $1 }        // Subtract l from r
        
        return Vector(result)
    }
}
