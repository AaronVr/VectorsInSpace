//
//  File.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

//import Foundation
//import Numerics
//
//public extension CirculantMatrix
//where Element: AlgebraicField {
//    @inlinable
//    static func *<V: VectorProtocol>(_ lhs: Self, _ rhs: V) -> Vector<Element>
//    where V.Element == Element {
//        assert(lhs.columnCount == rhs.length, "Incompatible matrix dimensions")
//        
//        let n = lhs.columnCount
//        var v = Vector<Element>.zero(n)
//        for i in 0..<n {
//            for j in 0..<n {
//                v[i] += lhs.sourceVector[(n - i + j) % n] * rhs[j]
//            }
//        }
//        
//        return v
//    }
//}
