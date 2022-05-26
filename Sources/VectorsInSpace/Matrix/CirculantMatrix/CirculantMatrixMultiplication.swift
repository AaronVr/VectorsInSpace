//
//  CirculantMatrixMultiplication.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation
import RealModule

public extension CirculantMatrix
where Element: AlgebraicField {
    // Calculating matrix multiplication between two Circulant matrices is
    // optimised to only calculate the first row vector of the resultant matrix.
    @inlinable
    static func *(_ lhs: Self, _ rhs: Self) -> Self {
        CirculantMatrix(rhs.sourceVector * lhs)
    }
}
