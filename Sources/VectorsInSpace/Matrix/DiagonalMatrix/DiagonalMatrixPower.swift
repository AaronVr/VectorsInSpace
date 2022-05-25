//
//  DiagonalMatrixPower.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import Numerics

public extension DiagonalMatrix {
    @inlinable
    static func **(_ lhs: DiagonalMatrix, _ rhs: Int) -> DiagonalMatrix<Element>
    where Element: Real {
        return DiagonalMatrix(lhs.elements.map { Element.pow($0, Element(rhs)) } )
    }
    
    @inlinable
    static func **<T>(_ lhs: DiagonalMatrix, _ rhs: Int) -> DiagonalMatrix<Complex<T>>
    where Element == Complex<T> {
        return DiagonalMatrix(lhs.elements.map { Element.pow($0, Element(rhs)) } )
    }
}
