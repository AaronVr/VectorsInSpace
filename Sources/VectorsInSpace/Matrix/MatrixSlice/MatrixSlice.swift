//
//  MatrixSlice.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation

public struct MatrixSlice<M: MatrixProtocol>: VectorProtocol {
    @usableFromInline
    internal let sliceMap: (Int) -> (Int, Int)
    public var source: M
    public let length: Int
    
    @inlinable
    internal init(_ matrix: M, using sliceMap: @escaping (Int) -> (Int, Int), length: Int) {
        self.source = matrix
        self.sliceMap = sliceMap
        self.length = length
    }
    
    @inlinable
    internal init(_ matrix: M, using sliceMap: @escaping (Int) -> (Int, Int)) {
        var length = 0
        var (row, column) = sliceMap(length)
        while row < matrix.rowCount && column < matrix.columnCount {
            length += 1
            (row, column) = sliceMap(length)
        }
        self.init(matrix, using: sliceMap, length: length)
    }
    
    @inlinable
    public subscript(at: Int) -> M.Element {
        get {
            assert(at < length)
            let (row, column) = sliceMap(at)
            return source[row, column]
        }
//        set {
//            assert(at < length)
//            let (row, column) = sliceMap(at)
//            source[row, column] = newValue
//        }
    }
}
