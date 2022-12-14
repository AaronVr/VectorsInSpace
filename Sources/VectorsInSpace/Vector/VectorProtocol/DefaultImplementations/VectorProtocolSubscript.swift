//
//  VectorProtocolSubscript.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol
where Element: AlgebraicField {
    @inlinable
    var elements: [Element] { get { (0..<length).map { self[$0] } } }
}
