//
//  MatrixProtocolScalarMultiplication.swift
//  
//
//  Created by Aaron Vranken on 12/05/2022.
//

import Foundation

public extension MatrixProtocol {
    @inlinable
    static func *(_ lhs: Self, _ rhs: Element) -> Matrix<Element> {
        Matrix(lhs.elements.map { rhs * $0 }, lhs.dimensions)
    }
    
    @inlinable
    static func *(_ lhs: Element, _ rhs: Self) -> Matrix<Element> {
        rhs * lhs
    }
}
