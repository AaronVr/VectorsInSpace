//
//  IdentityMatrix.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import Numerics

public extension Matrix
where Element: AlgebraicField {
    static func Identity(_ n: Int) -> Self {
        var matrix = Matrix(Array(repeating: Element.zero, count: n*n), (n, n))
        
        for i in 0..<n {
            matrix[i, i] = 1
        }
        
        return matrix
    }
}

public extension CirculantMatrix
where Element: AlgebraicField {
    static func Identity(_ n: Int) -> Self {
        var firstRow = Vector<Element>.zero(n)
        firstRow[0] = Element(exactly: 1)!
        
        return CirculantMatrix(firstRow)
    }
}
