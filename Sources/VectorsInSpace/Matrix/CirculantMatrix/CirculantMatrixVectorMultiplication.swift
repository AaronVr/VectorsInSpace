//
//  File.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation
import Numerics

public extension CirculantMatrix {
    @inlinable
    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Vector<Element>
    where V.Element == Element {
        assert(lhs.columnCount == rhs.length, "Incompatible matrix dimensions")
        
        let n = lhs.columnCount
        var v = Vector<Element>.zero(n)
        for i in 0..<n {
            for j in 0..<n {
                v[i] += lhs.sourceVector[(n - i + j) % n] * rhs[j]
            }
        }
        
        return v
    }
//    
//    @inlinable
//    static func *<V: VectorProtocol, R>(_ lhs: Self, _ rhs: V) -> Vector<Element>
//    where Element == Complex<R>, V.Element == R {
//        lhs * Vector(rhs.map { Element($0) })
//    }
//    
//    @inlinable
//    static func *<V: VectorProtocol>(_ lhs: V, _ rhs: Self) -> Vector<Element>
//    where V.Element == Element {
//        assert(lhs.length == rhs.columnCount, "Incompatible dimensions for vector-matrix multiplication")
//        
//        let n = rhs.columnCount
//        var v = Vector<Element>.zero(n)
//        for i in 0..<n {
//            for j in 0..<n {
//                v[i] += lhs[j] * rhs.sourceVector[(n - j + i) % n]
//            }
//        }
//        
//        return v
//    }
//    
//    @inlinable
//    static func *<V: VectorProtocol>(_ lhs: V, _ rhs: Self) -> Vector<Complex<Element>>
//    where Element: Real, V.Element == Complex<Element> {
//        lhs * CirculantMatrix<Complex<Element>>(rhs.sourceVector.map { Complex<Element>($0) })
//    }
}
