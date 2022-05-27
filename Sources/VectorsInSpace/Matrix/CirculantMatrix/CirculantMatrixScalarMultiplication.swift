//
//  CirculantMatrixScalarMultiplication.swift
//  
//
//  Created by Aaron Vranken on 26/05/2022.
//

import Foundation
import RealModule

public extension CirculantMatrix
where Element: AlgebraicField {
    @inlinable
    static func *(_ lhs: Self, _ rhs: Element) -> CirculantMatrix<Element> {
        CirculantMatrix(lhs.sourceVector.map { rhs * $0 })
    }

    @inlinable
    static func *(_ lhs: Element, _ rhs: Self) -> CirculantMatrix<Element> {
        rhs * lhs
    }
}
