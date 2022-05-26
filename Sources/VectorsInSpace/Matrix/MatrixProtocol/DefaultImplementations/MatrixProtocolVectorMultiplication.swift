//
//  MatrixProtocolVectorMultiplication.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import Numerics

public extension MatrixProtocol
where Element: AlgebraicField {
    @inlinable
    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Vector<Element>
    where V.Element == Element {
        assert(lhs.columnCount == rhs.length, "Incompatible dimensions matrix-vector  multiplication")
        
        let n = lhs.columnCount
        
        var result = Vector<Element>.zero(n)
        for i in 0..<n {
            for j in 0..<n {
                result[i] += lhs[i, j] * rhs[j]
            }
        }
        
        return result
    }

    @inlinable
    static func *<V: VectorProtocol>(_ lhs: V, _ rhs: Self) -> Vector<Element>
    where V.Element == Element {
        assert(rhs.rowCount == lhs.length, "Incompatible dimensions matrix-vector multiplication")

        let n = rhs.rowCount

        var result = Vector<Element>.zero(n)
        for i in 0..<n {
            for j in 0..<n {
                result[i] += lhs[j] * rhs[j, i]
            }
        }

        return result
    }
}
