//
//  MatrixProtocolMatrixMultiplication.swift
//  
//
//  Created by Aaron Vranken on 12/05/2022.
//

import Foundation
import Numerics

public extension MatrixProtocol
where Element: AlgebraicField {
    @inlinable
    static func *<M: MatrixProtocol>(_ lhs: Self, _ rhs: M) -> Matrix<Element>
    where Element == M.Element {
        assert(lhs.columnCount == rhs.rowCount, "Incompatible matrix dimensions")
        
        var result = Matrix<Element>.zero(lhs.rowCount, rhs.columnCount)
        
        for i in 0..<lhs.rowCount {
            for j in 0..<rhs.columnCount {
                result[i, j] = lhs.row(i) * rhs.column(j)
            }
        }
        
        return result
    }
}
