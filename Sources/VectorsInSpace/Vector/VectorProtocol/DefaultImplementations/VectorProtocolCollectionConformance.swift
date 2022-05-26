//
//  VectorProtocolCollectionConformance.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

public extension VectorProtocol {
    @inlinable
    var indices: Range<Int> { get { startIndex..<endIndex } }
    
    @inlinable
    var startIndex: Int { get { 0 } }
    
    @inlinable
    var endIndex: Int { get { length } }
    
    @inlinable
    func index(before i: Int) -> Int {
        assert(startIndex < i, "Index out of bounds")
        
        return i - 1
    }
    
    @inlinable
    func index(after i: Int) -> Int {
        assert(i < endIndex, "Index out of bounds")
        
        return i + 1
    }
}
