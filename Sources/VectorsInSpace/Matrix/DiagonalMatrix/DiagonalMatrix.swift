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
    public var elements: ContiguousArray<Element>
    
    public init(_ vector: Vector<Element>) {
        self.elements = vector._elements
        self.dimensions = (elements.count, elements.count)
    }
    
    public init(_ elements: [Element]) {
        self.init(Vector(elements))
    }
    
    @inlinable
    public subscript(row: Int, column: Int) -> Element {
        get { row == column ? elements[row] : 0 }
    }
}
