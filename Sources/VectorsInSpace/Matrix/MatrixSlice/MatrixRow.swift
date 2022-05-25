//
//  MatrixRow.swift
//
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct MatrixRow<M: MatrixProtocol>: MatrixAxisSlice, CustomStringConvertible {
    public var source: M
    public let row: Int
    
    public var length: Int { get { source.columnCount } }
    public var indices: Range<Int> { get { startIndex..<endIndex } }

    public init(_ matrix: M, _ rowIndex: Int) {
        self.source = matrix
        self.row = rowIndex
    }

    public subscript(position: Int) -> M.Element {
        get { source[row, position] }
    }
}

//public extension MatrixRow {
//    var description: String {
//        get {
//            (0..<length).map { self[$0] }.description
//        }
//    }
//}
