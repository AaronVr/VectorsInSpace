//
//  ZeroVector.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation
import RealModule

public extension Vector
where Element: AlgebraicField {
    @inlinable
    static func zero(_ n: Int) -> Vector<Element> {
        return Vector(repeating: Element.zero, count: n)
    }
}
