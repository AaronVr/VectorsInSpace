//
//  CirculantMatrix.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct CirculantMatrix<Element: AlgebraicField>: MatrixProtocol {    
    public let sourceVector: Vector<Element>
    public var dimensions: (Int, Int)
    
    @inlinable
    public var elements: ContiguousArray<Element> {
        get {
            var elements: ContiguousArray<Element> = []
            for row in 0..<rowCount {
                for column in 0..<columnCount {
                    elements.append(self[row, column])
                }
            }
            return elements
        }
    }
    
    @inlinable
    public init(_ vector: Vector<Element>) {
        self.sourceVector = vector
        self.dimensions = (vector.length, vector.length)
    }
    
    @inlinable
    public init(_ elements: [Element]) {
        self.init(Vector(elements))
    }
    
    @inlinable
    public subscript(_ row: Int, _ column: Int) -> Element {
        return sourceVector[(column + sourceVector.count - row) % sourceVector.count]
    }
}
