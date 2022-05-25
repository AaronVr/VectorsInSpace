//
//  MatrixError.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation

public enum LinearAlgebraErrors {
    static func incompatibleMatrixDimensions() {
        fatalError("Incompatible matrix dimensions.")
    }
    
    static func unequalVectorLengths() {
        fatalError("Unequal vector lengths.")
    }
}
