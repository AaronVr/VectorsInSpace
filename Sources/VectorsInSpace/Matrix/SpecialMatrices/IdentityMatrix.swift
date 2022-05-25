//
//  IdentityMatrix.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation

public extension Matrix {
    static func Identity(_ n: Int) -> Matrix<Element> {
        var matrix = Matrix(Array(repeating: Element.zero, count: n*n), (n, n))
        
        for i in 0..<n {
            matrix[i, i] = 1
        }
        
        return matrix
    }
}