//
//  CirculantMatrixSubtraction.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation

extension CirculantMatrix {
    @inlinable
    public static func -(_ lhs: Self, _ rhs: Self) throws -> Self {
        assert(lhs.dimensions == rhs.dimensions, "Incompatible matrix dimensions")
        
        return CirculantMatrix(lhs.sourceVector - rhs.sourceVector)
    }
}
