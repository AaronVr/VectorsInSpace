//
//  VectorProtocolConversion.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation
import Numerics

public extension VectorProtocol
where Element: Real {
    @inlinable
    func toComplex() -> Vector<Complex<Element>>
    where Element: Real {
        Vector(self.map { Complex($0) })
    }
}
