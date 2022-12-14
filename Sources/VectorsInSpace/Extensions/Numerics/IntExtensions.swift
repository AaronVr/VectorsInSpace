//
//  File.swift
//  
//
//  Created by Aaron Vranken on 28/04/2022.
//

import Foundation

public extension Int {
    // Modulo operator
    @inlinable
    static func %%(lhs: Self, rhs: Self) -> Int {
        let mod = lhs % rhs
        return mod >= 0 ? mod : mod + rhs
    }
}
