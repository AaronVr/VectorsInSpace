//
//  ArrayVectorExtensions.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import Foundation
import Numerics

public extension Array where Element: AlgebraicField {
    func vector() -> Vector<Element> {
        return Vector(self)
    }
}
