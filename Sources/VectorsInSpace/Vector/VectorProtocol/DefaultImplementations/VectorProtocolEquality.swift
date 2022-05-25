//
//  VectorProtocolEquality..swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation

public extension VectorProtocol {
    @inlinable
    static func ==<T: VectorProtocol>(_ lhs: Self, _ rhs: T) -> Bool where T.Element == Element {
        guard lhs.length == rhs.length else {
            return false
        }
            
        var i = 0
        while i < lhs.length && lhs[i] == rhs[i] {
            i += 1
        }
        
        return i == lhs.length
    }
}
