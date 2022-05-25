//
//  MatrixProtocol.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public protocol MatrixProtocol: Equatable, CustomStringConvertible {
    associatedtype Element: AlgebraicField

    var dimensions: (Int, Int) { get }
    
    var elements: ContiguousArray<Element> { get }
    
    subscript(_ row: Int, _ column: Int) -> Self.Element {
        get
    }
    
//    var T: Matrix<Element> { get }
    
    // Arithmetic operations
    // Matrix addition
    static func +<T: MatrixProtocol>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where T.Element == Element
    
    // Matrix subtraction
    static func -<T: MatrixProtocol>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where T.Element == Element
    
    // Matrix multiplication
    static func *<T: MatrixProtocol, R: Real>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where Element == R, T.Element == Element
    static func *<T: MatrixProtocol, R: Real>(_ lhs: Self, _ rhs: T) -> Matrix<Element> where Element == Complex<R>, T.Element == Element
    
    // Scalar matrix multiplication
    static func *(_ lhs: Self, _ rhs: Element) -> Matrix<Element>
    static func *(_ lhs: Element, _ rhs: Self) -> Matrix<Element>
    
    // Vector matrix multiplication
    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Vector<Element> where V.Element == Element
    static func *<V: VectorProtocol>(_ lhs: V, _ rhs: Self) -> Vector<Element> where V.Element == Element
}

// Basic row, column properties and functions.
public extension MatrixProtocol {
    var rows: [MatrixRow<Self>] { get { (0..<rowCount).map { row($0) } } }
    var cols: [MatrixColumn<Self>] { get { (0..<columnCount).map { column($0) } } }
    
    var rowCount: Int { get { dimensions.0 } }
    var columnCount: Int { get { dimensions.1 } }
    
    func row(_ index: Int) -> MatrixRow<Self> {
        MatrixRow(self, index)
    }
    
    func column(_ index: Int) -> MatrixColumn<Self> {
        MatrixColumn(self, index)
    }
    
    @inlinable
    subscript(_ at: Int) -> MatrixRow<Self> { get { row(at) } }
}

public extension MatrixProtocol {
    var description: String {
        get {
            rows.map { $0.description }.joined(separator: "\n")
        }
    }
}
