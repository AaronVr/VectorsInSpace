//
//  DiagonalMatrix.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import RealModule

// TODO: Specialised multiplication operations for diagonal matrices
public struct DiagonalMatrix<Element: AlgebraicField>: MatrixProtocol {
    public var dimensions: (Int, Int)
    @usableFromInline
    internal var _elements: ContiguousArray<Element>
    
    @inlinable
    public init(_ vector: Vector<Element>) {
        self._elements = vector._elements
        self.dimensions = (_elements.count, _elements.count)
    }
    
    @inlinable
    public init(_ elements: [Element]) {
        self.init(Vector(elements))
    }
    
    @inlinable
    public subscript(row: Int, column: Int) -> Element {
        get { row == column ? _elements[row] : 0 }
    }
}
