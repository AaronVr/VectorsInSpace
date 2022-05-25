//
//  VectorProtocolScalarMultiplication.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation

public extension VectorProtocol {
    @inlinable
    static func *(_ lhs: Element, _ rhs: Self) -> Vector<Element> {
        return Vector(rhs.map { lhs * $0 })
    }
    
    @inlinable
    static func *(_ lhs: Self, _ rhs: Element) -> Vector<Element> {
        return rhs * lhs
    }
}
