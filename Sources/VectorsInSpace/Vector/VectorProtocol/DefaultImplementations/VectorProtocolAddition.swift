//
//  VectorProtocolAddition.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation


public extension VectorProtocol {
    @inlinable
    static func +<T: VectorProtocol>(_ lhs: Self, _ rhs: T) -> Vector<Element> where T.Element == Element {
        assert(lhs.length == rhs.length, "Vectors of unequal length")
        
        let result = zip(lhs, rhs)  // Make zipped (r, l) tuples
            .map { $0 + $1 }        // Add pairs together
        
        return Vector(result)
    }    
}
