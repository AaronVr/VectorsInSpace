//
//  VectorProtocolAddition.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import RealModule


public extension VectorProtocol
where Element: AlgebraicField {
    @inlinable
    static func +<T: VectorProtocol>(_ lhs: Self, _ rhs: T) -> Vector<Element> where T.Element == Element {
        assert(lhs.length == rhs.length, "Vectors of unequal length")
        
        var result = Vector<Element>.zero(lhs.length)
        for i in 0..<lhs.length {
            result[i] = lhs[i] + rhs[i]
        }
        
        return result
    }    
}
