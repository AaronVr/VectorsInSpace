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

public extension VectorProtocol
where Element: AlgebraicField {
    @inlinable
    func toReal<R: Real>() -> Vector<R>
    where Element == Complex<R> {
        Vector(self.map { $0.real })
    }
}
