//
//  MatrixVectorSlice.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation

protocol MatrixAxisSlice: VectorProtocol
where Element == MatrixType.Element {
    associatedtype MatrixType: MatrixProtocol
    var source: MatrixType { get }
}

extension MatrixAxisSlice {
    public var startIndex: Int { get { 0 } }
    public var endIndex: Int { get { return length } }
    
    func index(before i: Int) -> Int {
        guard 0 < i else {
            fatalError()
        }

        return i-1
    }

    public func index(after i: Int) -> Int {
        guard i < length else {
             fatalError()
        }

        return i+1
    }
}
