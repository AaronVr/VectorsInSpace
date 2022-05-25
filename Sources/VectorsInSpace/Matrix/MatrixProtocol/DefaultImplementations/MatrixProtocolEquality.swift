//
//  File.swift
//  
//
//  Created by Aaron Vranken on 12/05/2022.
//

import Foundation

public extension MatrixProtocol {
    @inlinable
    static func ==<M: MatrixProtocol>(_ lhs: Self, _ rhs: M) -> Bool where M.Element == Element {
        return lhs.dimensions == rhs.dimensions && lhs.elements == rhs.elements
    }
}
