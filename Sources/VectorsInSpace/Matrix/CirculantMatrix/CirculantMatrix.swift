//
//  CirculantMatrix.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct CirculantMatrix<Element>: MatrixProtocol {    
    public let sourceVector: Vector<Element>
    public let dimensions: (Int, Int)
    
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
        get { sourceVector[(column + sourceVector.count - row) % sourceVector.count] }
//        get { sourceVector[(column - row) %% sourceVector.count] }
    }
}

extension CirculantMatrix: Equatable where Element: Equatable {}
