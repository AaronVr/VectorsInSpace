//
//  VectorProtocol.swift
//
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public protocol VectorProtocol: Collection, Equatable, CustomStringConvertible
where Element: AlgebraicField {
    var length: Int { get }
    var elements: [Element] { get }
    

    // Vector subscript element getter
    subscript(_ at: Int) -> Element { get }
    
//    func column() -> Matrix<Element>
//    func row() -> Matrix<Element>
    
    // Vector addition
    static func +<T: VectorProtocol>(_ lhs: Self, _ rhs: T) -> Vector<Element> where T.Element == Element
    
    // Vector subtraction
    static func -<T: VectorProtocol>(_ lhs: Self, _ rhs: T) -> Vector<Element> where T.Element == Element
    
    // Vector dot product
    static func *<T: VectorProtocol, R: Real>(_ lhs: Self, _ rhs: T) -> R where Element == R, T.Element == Element
    static func *<T: VectorProtocol, R: Real>(_ lhs: Self, _ rhs: T) -> Element where Element == Complex<R>, T.Element == Element
    
    // Vector scalar multiplication
    static func *(_ lhs: Element, _ rhs: Self) -> Vector<Element>     // Scalar multiplication
    static func *(_ lhs: Self, _ rhs: Element) -> Vector<Element>     // Scalar multiplication
}

public extension VectorProtocol {
    var description: String {
        get {
            (0..<length).map { self[$0] }.description
        }
    }
}

//public extension VectorProtocol {
//    func column() -> Matrix<Element> {
//        fatalError()
//    }
//    
//    func row() -> Matrix<Element> {
//        fatalError()
//    }
//}
