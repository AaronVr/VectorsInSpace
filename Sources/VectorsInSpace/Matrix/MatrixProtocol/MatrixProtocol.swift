//
//  MatrixProtocol.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public protocol MatrixProtocol: CustomStringConvertible {
    associatedtype Element
    var dimensions: (Int, Int) { get }
        
    @inlinable
    subscript(_ row: Int, _ column: Int) -> Self.Element {
        get
    }
}

public extension MatrixProtocol {
    @inlinable
    var elements: ContiguousArray<Element> {
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
}

// Basic row, column properties and functions.
public extension MatrixProtocol {
    var rows: [MatrixSlice<Self>] { get { (0..<rowCount).map { row($0) } } }
    var cols: [MatrixSlice<Self>] { get { (0..<columnCount).map { column($0) } } }

    @inlinable
    var rowCount: Int { get { dimensions.0 } }
    @inlinable
    var columnCount: Int { get { dimensions.1 } }
    
    @inlinable
    func row(_ index: Int) -> MatrixSlice<Self> {
        MatrixSlice(self, using: { (index, $0) }, length: columnCount)
    }
    
    @inlinable
    func column(_ index: Int) -> MatrixSlice<Self> {
        MatrixSlice(self, using: { ( $0, index) }, length: rowCount)
    }
    
    @inlinable
    subscript(_ at: Int) -> MatrixSlice<Self> { get { row(at) } }
}

public extension MatrixProtocol {
    var description: String {
        get {
            rows.map { $0.description }.joined(separator: "\n")
        }
    }
}
