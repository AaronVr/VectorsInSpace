//
//  DiagonalMatrixConversion.swift
//  
//
//  Created by Aaron Vranken on 26/05/2022.
//

import Foundation
import Numerics

public extension DiagonalMatrix
where Element: Real {
    @inlinable
    func toComplex() -> DiagonalMatrix<Complex<Element>>
    where Element: Real {
        DiagonalMatrix<Complex<Element>>(self._elements.map { Complex($0) })
    }
}

public extension DiagonalMatrix
where Element: AlgebraicField {
    @inlinable
    func toReal<R: Real>() -> DiagonalMatrix<R>
    where Element == Complex<R> {
        DiagonalMatrix<R>(self._elements.map { $0.real })
    }
}
