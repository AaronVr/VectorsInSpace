//
//  Matrix.swift
//
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct Matrix<Element>: MatrixProtocol {
    public var elements: ContiguousArray<Element>
    public let dimensions: (Int, Int)
    
    @inlinable
    init(_ elements: [Element], _ dimensions: (Int, Int)) {
        guard elements.count == dimensions.0 * dimensions.1 else {
            fatalError("Matrix initialisation: Invalid matrix dimensions")
        }
        
        self.elements = ContiguousArray(elements)
        self.dimensions = dimensions
    }
    
    @inlinable
    public init<T: Collection>(_ elements: [T]) where T.Element == Element {
        let arrayCounts = elements.map { $0.count }
        guard arrayCounts.allSatisfy({ $0 == arrayCounts[0] }) else {
            fatalError("Matrix initialisation: Invalid array dimensions")
        }
        
        self.elements = ContiguousArray(elements.joined())
        self.dimensions = (arrayCounts.count, arrayCounts[0])
    }
    
    @inlinable
    public init<T: Collection>(_ elements: T, _ dimensions: (Int, Int)) where T.Element == Element {
        assert(elements.count == dimensions.0 & dimensions.1)
        self.elements = ContiguousArray(elements)
        self.dimensions = dimensions
    }
    
    @inlinable
    public init<M: MatrixProtocol>(_ matrix: M) where M.Element == Element {
        elements = ContiguousArray()
        for i in 0..<matrix.rowCount {
            for j in 0..<matrix.columnCount {
                elements.append(matrix[i, j])
            }
        }
        self.dimensions = (matrix.rowCount, matrix.columnCount)
    }
    
    @inlinable
    public func elementAt(_ row: Int, _ column: Int) -> Element {
        elements[row * columnCount + column]
    }    
    
    @inlinable
    public subscript(_ row: Int, _ column: Int) -> Element {
        get { self.elements[row * columnCount + column] }
        set { self.elements[row * columnCount + column] = newValue }
    }
}

extension Matrix: Equatable where Element: Equatable {}
