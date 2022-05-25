//
//  MatrixProtocolSubtraction.swift
//  
//
//  Created by Aaron Vranken on 12/05/2022.
//

import Foundation

public extension MatrixProtocol {
    @inlinable
    static func -<T: MatrixProtocol>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where T.Element == Element {
        assert(lhs.dimensions == rhs.dimensions, "Incompatible matrix dimensions")
        
        let result = zip(lhs.elements, rhs.elements).map { $0 - $1 }
        return Matrix(result, rhs.dimensions)
    }
}
