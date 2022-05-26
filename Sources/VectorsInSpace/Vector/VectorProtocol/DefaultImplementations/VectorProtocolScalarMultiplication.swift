//
//  VectorProtocolScalarMultiplication.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol
where Element: AlgebraicField {
    @inlinable
    static func *(_ lhs: Element, _ rhs: Self) -> Vector<Element> {
        var result = Vector<Element>.zero(rhs.length)
        for i in 0..<rhs.length {
            result[i] = lhs * rhs[i]
        }
        return result
    }
    
    @inlinable
    static func *(_ lhs: Self, _ rhs: Element) -> Vector<Element> {
        return rhs * lhs
    }
}
