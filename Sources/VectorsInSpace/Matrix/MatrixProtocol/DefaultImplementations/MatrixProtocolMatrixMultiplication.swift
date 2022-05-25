//
//  MatrixProtocolMatrixMultiplication.swift
//  
//
//  Created by Aaron Vranken on 12/05/2022.
//

import Foundation
import Numerics

public extension MatrixProtocol {
    @inlinable
    static func *<M: MatrixProtocol>(_ lhs: Self, _ rhs: M) -> Matrix<Element>
    where Element: Real, Element == M.Element {
        assert(lhs.columnCount == rhs.rowCount, "Incompatible matrix dimensions")
        
        var result = Matrix<Element>.zero(lhs.rowCount, rhs.columnCount)
        
        for i in 0..<lhs.rowCount {
            for j in 0..<rhs.columnCount {
                result[i, j] = lhs.row(i) * rhs.column(j)
            }
        }
        
        return result
    }
    
    static func *<T: MatrixProtocol, R: Real>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where Element == Complex<R>, T.Element == Element {
        assert(lhs.columnCount == rhs.rowCount, "Incompatible matrix dimensions")
        
        var result = Matrix<Element>.zero(lhs.rowCount, rhs.columnCount)
        
        for i in 0..<lhs.rowCount {
            for j in 0..<rhs.columnCount {
                let row = lhs.row(i)
                let column = rhs.column(j)
                let dotProduct = row * column
                print("\nrow \(i): ", row, "\ncolumn \(j): ", column, "\nresult: ", dotProduct)
                result[i, j] = lhs.row(i) * rhs.column(j)
            }
        }
        
        return result
    }
}
