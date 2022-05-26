//
//  CirculantMatrixAddition.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation
import RealModule

public extension CirculantMatrix
where Element: AlgebraicField {
    @inlinable
    public static func +(_ lhs: CirculantMatrix, _ rhs: CirculantMatrix) -> CirculantMatrix {
        assert(lhs.dimensions == rhs.dimensions, "Incompatible matrix dimensions")
        
        return CirculantMatrix(lhs.sourceVector + rhs.sourceVector)
    }
}
