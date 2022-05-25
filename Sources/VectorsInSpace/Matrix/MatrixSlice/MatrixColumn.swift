//
//  MatrixColumn.swift
//
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct MatrixColumn<M: MatrixProtocol>: MatrixAxisSlice {
    public var source: M
    public let column: Int
    
    public var length: Int { get { source.rowCount } }
    public var indices: Range<Int> { get { startIndex..<endIndex } }

    public init(_ matrix: M, _ columnIndex: Int) {
        self.source = matrix
        self.column = columnIndex
    }

    public subscript(position: Int) -> M.Element {
        get { source[position, column] }
    }
}


